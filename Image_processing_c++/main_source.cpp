#include <algorithm>
#include <processFiles.cpp>


using namespace cv;


int main() {
//  Call the image_process function
    std::string dropPath;
    std::string pickPath;
    pickPath = "/test";
    dropPath = "/test_";
    cout << "Hello World!";
    processFiles(pickPath, dropPath);

}
