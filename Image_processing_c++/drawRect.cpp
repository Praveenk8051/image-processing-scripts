#include<opencv2/opencv.hpp>
#include<opencv2/imgcodecs.hpp>
#include <vector>
#include <tuple>

using namespace cv;
using namespace std;


tuple<Mat, RotatedRect> drawRect(const Mat &binaryImage, Mat grayImage){
    Mat contourOutput = binaryImage.clone();
    vector<vector<Point>> contours;
    findContours(contourOutput, contours, RETR_EXTERNAL, CHAIN_APPROX_SIMPLE);


    int largest_area = 0;
    int largest_contour_index = 0;
    Rect bounding_rect;
    for (size_t i = 0; i < contours.size(); i++) {
        double area = contourArea(contours[i]);

        if (area > largest_area) {
            largest_area = area;
            largest_contour_index = i;
            bounding_rect = boundingRect(contours[i]);

        }
    }
    drawContours(grayImage, contours, largest_contour_index, Scalar(255, 0, 0), 2);
    RotatedRect box = cv::minAreaRect(cv::Mat(contours[largest_contour_index]));

    return make_tuple(grayImage, box);

}