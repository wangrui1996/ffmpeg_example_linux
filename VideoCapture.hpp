//
// Created by rui on 19-4-25.
//

#ifndef FFMPEG_READ_VIDEOCAPTURE_HPP
#define FFMPEG_READ_VIDEOCAPTURE_HPP


extern "C" {
#include <libavutil/imgutils.h>
#include <libavutil/samplefmt.h>
#include <libavutil/timestamp.h>
#include <libavformat/avformat.h>
#include "libswscale/swscale.h"
}

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>



/* Enable or disable frame reference counting. You are not supposed to support
 * both paths in your application but pick the one most appropriate to your
 * needs. Look for the use of refcount in this example to see what are the
 * differences of API usage between them. */


namespace ffmpeg {
  class VideoCapture {
  public:
    VideoCapture(std::string path);
    ~VideoCapture();
    bool read(cv::Mat &frame);

  protected:
    void avframeToMat(const AVFrame * frame, cv::Mat& image);
    int decode_packet(int *got_frame, int cached, cv::Mat &img);
    int open_codec_context(int *stream_idx,
                              AVCodecContext **dec_ctx, AVFormatContext *fmt_ctx, enum AVMediaType type);
  private:
    int ret, got_frame;
    AVFormatContext *fmt_ctx = NULL;
    AVFrame *frame = NULL;
    SwsContext* conversion;

    AVCodecContext *video_dec_ctx = NULL;
    int width, height;
    enum AVPixelFormat pix_fmt;
    AVStream *video_stream = NULL;
    int video_stream_idx = -1;
    AVPacket pkt;
    int video_frame_count = 0;
    int refcount = 0;
    int get_img = false;
  };
}




#endif //FFMPEG_READ_VIDEOCAPTURE_HPP
