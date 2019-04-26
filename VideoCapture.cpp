//
// Created by rui on 19-4-25.
//

#include "VideoCapture.hpp"


namespace ffmpeg{
  void VideoCapture::avframeToMat(const AVFrame * frame, cv::Mat& image)
  {
    int width = frame->width;
    int height = frame->height;
    // Allocate the opencv mat and store its stride in a 1-element array
    if (image.rows != height || image.cols != width || image.type() != CV_8UC3) image = cv::Mat(height, width, CV_8UC3);
    int cvLinesizes[1];
    cvLinesizes[0] = (int)image.step1();
    // Convert the colour format and write directly to the opencv matrix
    conversion = sws_getContext(width, height, (AVPixelFormat) frame->format, width, height, AVPixelFormat::AV_PIX_FMT_BGR24, SWS_FAST_BILINEAR, NULL, NULL, NULL);
    sws_scale(conversion, frame->data, frame->linesize, 0, height, &image.data, cvLinesizes);
  }

  VideoCapture::VideoCapture(std::string path) {
    int ret = 0;
    if (!path.size()) {
      fprintf(stderr, "cannot open file: %s", path.c_str());
      exit(1);
    }
    //    refcount = 1;
    const char *src_filename = path.c_str();
    /* open input file, and allocate format context */
    if (avformat_open_input(&fmt_ctx, src_filename, NULL, NULL) < 0) {
      fprintf(stderr, "Could not open source file %s\n", src_filename);
      exit(1);
    }

  /* retrieve stream information */
  if (avformat_find_stream_info(fmt_ctx, NULL) < 0) {
    fprintf(stderr, "Could not find stream information\n");
    exit(1);
  }

  if (open_codec_context(&video_stream_idx, &video_dec_ctx, fmt_ctx, AVMEDIA_TYPE_VIDEO) >= 0) {
    video_stream = fmt_ctx->streams[video_stream_idx];

    /* allocate image where the decoded image will be put */
    width = video_dec_ctx->width;
    height = video_dec_ctx->height;
    pix_fmt = video_dec_ctx->pix_fmt;
    if (ret < 0) {
      fprintf(stderr, "Could not allocate raw video buffer\n");
      exit(1);
    }
  }

  /* dump input information to stderr */
  av_dump_format(fmt_ctx, 0, src_filename, 0);
  if (!video_stream) {
    fprintf(stderr, "Could not find audio or video stream in the input, aborting\n");
    ret = 1;
    exit(1);
  }

  frame = av_frame_alloc();
  if (!frame) {
    fprintf(stderr, "Could not allocate frame\n");
    ret = AVERROR(ENOMEM);
    exit(1);
  }

  /* initialize packet, set data to NULL, let the demuxer fill it */
  av_init_packet(&pkt);
  pkt.data = NULL;
  pkt.size = 0;
  }

  VideoCapture::~VideoCapture() {
    avcodec_free_context(&video_dec_ctx);
    avformat_close_input(&fmt_ctx);
    av_frame_free(&frame);
    sws_freeContext(conversion);
  }

  bool VideoCapture::read(cv::Mat &frame) {
    get_img = false;
    /* read frames from the file */
    while (av_read_frame(fmt_ctx, &pkt) >= 0) {
      AVPacket orig_pkt = pkt;
      do {
        ret = decode_packet(&got_frame, 0, frame);
        if (ret < 0)
          break;
        pkt.data += ret;
        pkt.size -= ret;
      } while (pkt.size > 0);
      av_packet_unref(&orig_pkt);
      if(get_img)
        return true;
    }
    /* flush cached frames */
    pkt.data = NULL;
    pkt.size = 0;
    do {
      decode_packet(&got_frame, 1, frame);
      if (get_img)
        return true;
    } while (got_frame);
    printf("video end.\n");
    return false;
  }

  int VideoCapture::decode_packet(int *got_frame, int cached, cv::Mat &image){
    int ret = 0;
    int decoded = pkt.size;
    *got_frame = 0;
    if (pkt.stream_index == video_stream_idx) {
      /* decode video frame */
      ret = avcodec_decode_video2(video_dec_ctx, frame, got_frame, &pkt);
      if (ret < 0) {
        //fprintf(stderr, "Error decoding video frame (%s)\n", av_err2str(ret));
        return ret;
      }

      if (*got_frame) {
        if (frame->width != width || frame->height != height || frame->format != pix_fmt) {
          /* To handle this change, one could call av_image_alloc again and
           * decode the following frames into another rawvideo file. */
          fprintf(stderr, "Error: Width, height and pixel format have to be "
                          "constant in a rawvideo file, but the width, height or "
                          "pixel format of the input video changed:\n"
                          "old: width = %d, height = %d, format = %s\n"
                          "new: width = %d, height = %d, format = %s\n",
                          width, height, av_get_pix_fmt_name(pix_fmt),
                          frame->width, frame->height,
                          av_get_pix_fmt_name( (AVPixelFormat) frame->format));
          return -1;
        }
        printf("video_frame%s n:%d coded_n:%d\n",
            cached ? "(cached)" : "",
            video_frame_count++, frame->coded_picture_number);
        /* copy decoded frame to destination buffer:
         * this is required since rawvideo expects non aligned data */
        avframeToMat(frame,  image);
        get_img = true;
//       cv::imshow("demo1", image);
//        cv::waitKey(0);

        /* write to rawvideo file */
      }
    }
    /* If we use frame reference counting, we own the data and need
     * to de-reference it when we don't use it anymore */
    if (*got_frame && refcount)
      av_frame_unref(frame);
    return decoded;

  }

  int VideoCapture::open_codec_context(int *stream_idx,
      AVCodecContext **dec_ctx, AVFormatContext *fmt_ctx, enum AVMediaType type)
  {
    int ret, stream_index;
    AVStream *st;
    AVCodec *dec = NULL;
    AVDictionary *opts = NULL;
    ret = av_find_best_stream(fmt_ctx, type, -1, -1, NULL, 0);
    if (ret < 0) {
      fprintf(stderr, "Could not find %s stream in input file '%s'\n",
          av_get_media_type_string(type), "filename");
      return ret;
    } else {
      stream_index = ret;
      st = fmt_ctx->streams[stream_index];
      /* find decoder for the stream */
      dec = avcodec_find_decoder(st->codecpar->codec_id);
      if (!dec) {
        fprintf(stderr, "Failed to find %s codec\n",
            av_get_media_type_string(type));
        return AVERROR(EINVAL);
      }
      /* Allocate a codec context for the decoder */
      *dec_ctx = avcodec_alloc_context3(dec);
      if (!*dec_ctx) {
        fprintf(stderr, "Failed to allocate the %s codec context\n",
            av_get_media_type_string(type));
        return AVERROR(ENOMEM);
      }
      /* Copy codec parameters from input stream to output codec context */
      if ((ret = avcodec_parameters_to_context(*dec_ctx, st->codecpar)) < 0) {
        fprintf(stderr, "Failed to copy %s codec parameters to decoder context\n",
            av_get_media_type_string(type));
        return ret;
      }
      /* Init the decoders, with or without reference counting */
      av_dict_set(&opts, "refcounted_frames", refcount ? "1" : "0", 0);
      if ((ret = avcodec_open2(*dec_ctx, dec, &opts)) < 0) {
        fprintf(stderr, "Failed to open %s codec\n",
            av_get_media_type_string(type));
        return ret;
      }
      *stream_idx = stream_index;
    }
    return 0;
  }

}
