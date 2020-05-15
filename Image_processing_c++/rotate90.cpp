//
// Created by praveen on 05.12.19.
//
#include<opencv2/opencv.hpp>
#include<iostream>
#include<opencv2/imgcodecs.hpp>
#include <boost/system/error_code.hpp>
#include <vector>
#include <algorithm>
#include <boost/filesystem.hpp>
#include <detectAngle.cpp>

using namespace std;
using namespace cv;

#ifndef USING_BOOST
#define USING_BOOST
#endif

Mat rotate90(const Mat &grayImage, const RotatedRect &box){

    double angle = detectAngle(box);
    Mat rotationMatrix = cv::getRotationMatrix2D(box.center, angle, 1);
    Mat rotated;
    warpAffine(grayImage, rotated, rotationMatrix, grayImage.size(), cv::INTER_CUBIC);
//    cout<<box.angle;
    cv::Size box_size = box.size;

    if (box_size.height < box_size.width){
        std::swap(box_size.width, box_size.height);
    }
//    cout<<box.angle;
    Mat cropped;
    getRectSubPix(rotated, box_size, box.center, cropped);
    return cropped;
}
