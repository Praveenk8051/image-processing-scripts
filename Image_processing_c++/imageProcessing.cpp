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
#include<drawRect.cpp>
#include<tuple>


#ifndef USING_BOOST
#define USING_BOOST
#endif

using namespace std;
using namespace cv;
using namespace boost::system;
namespace filesys = boost::filesystem;


tuple<Mat, Mat> imageProcessing(const boost::filesystem::path &pickPath){
    double minVal;
    double maxVal;
    Point minLoc;
    Point maxLoc;
    Mat imageFile, grayImage, kernel, thresholdImage;

        imageFile = imread(pickPath.string());
        cv::cvtColor(imageFile, grayImage, COLOR_BGR2GRAY);
        minMaxLoc(grayImage, &minVal, &maxVal, &minLoc, &maxLoc);
        cv::threshold(grayImage, thresholdImage, 30, maxVal, THRESH_BINARY);

        return make_tuple(grayImage, thresholdImage);
}

