//
// Created by praveen on 05.12.19.
//
#include<opencv2/imgcodecs.hpp>
using namespace std;
using namespace cv;

double detectAngle(const cv::RotatedRect &box){
    Point2f rect_points[4];
    box.points(rect_points);


    Point2f edge1 = Vec2f(rect_points[1].x, rect_points[1].y) - Vec2f(rect_points[0].x, rect_points[0].y);
    Point2f edge2 = Vec2f(rect_points[2].x, rect_points[2].y) - Vec2f(rect_points[1].x, rect_points[1].y);


    Point2f usedEdge = edge1;
    if(norm(edge2) > norm(edge1))
        usedEdge = edge2;

    Point2f reference = Vec2f(1,0); // horizontal edge

    double angle = 180.0f/CV_PI * acos((reference.x*usedEdge.x + reference.y*usedEdge.y) / (cv::norm(reference) *cv::norm(usedEdge)));
    angle = 90.0-angle ;
    return angle;
}
