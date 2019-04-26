/**
 * @file
 * Demuxing and showing example.
 *
 * Show how to use the libavformat and libavcodec API to demux and
 * decode audio and video data.
 * @example demuxing_decoding.c
 */

#include <iostream>
#include "VideoCapture.hpp"






int main (int argc, char **argv)
{
  ffmpeg::VideoCapture cap = ffmpeg::VideoCapture("/home/rui/ooo.mp4");
  cv::Mat frame;
  while (cap.read(frame)){
    cv::resize(frame, frame, cv::Size(1366, 768));
        cv::imshow("frame", frame);
        cv::waitKey(1);
  }

}

