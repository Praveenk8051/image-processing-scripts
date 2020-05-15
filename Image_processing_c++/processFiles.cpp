#include<iostream>
#include <boost/system/error_code.hpp>
#include <algorithm>
#include <boost/filesystem.hpp>
#include <imageProcessing.cpp>
#include <rotate90.cpp>

#ifndef USING_BOOST
#define USING_BOOST
#endif

using namespace std;
using namespace cv;
using namespace boost::system;
namespace filesys = boost::filesystem;

// Check for .DS_Store attribute file in MacOS path
static bool endsWith(const std::string &str, basic_string_view<char> suffix) {
    return str.size() >= suffix.size() && 0 == str.compare(str.size() - suffix.size(), suffix.size(), suffix);
}
void writeImage(const std::string &dropPath, const Mat &image){
    cout << dropPath ;
    imwrite(dropPath,image);
}

void processFiles(std::string pickPath, std::string dropPath){
    Mat grayImage, thresholdImage, contourImage;
    RotatedRect box;

    //  Initialize the iterator for folder structure
    filesys::recursive_directory_iterator iter(pickPath);
    boost::system::error_code ec;

    //  Check if the path exist
    if (filesys::exists(pickPath)) {


        //  Initialize the iterator for the path
        filesys::recursive_directory_iterator iter(pickPath);
        filesys::recursive_directory_iterator end;
        //  Loop around all the folders in the path
        while (iter != end) {
            //  Check if the path is directory path
            if (filesys::is_directory(pickPath)) {


                //   Print the path of the directory
                std::cout << iter->path() << std::endl;
                iter.increment(ec);

                //   Check if the file is regular file
                if (filesys::is_regular_file(iter->path())) {
                    //   Loop around all .jpeg-.jpg file in the selected folder
                    for (iter->path(); filesys::is_regular_file(iter->path()); iter.increment(ec)) {
                        std::string path = iter->path().string();
                        if (endsWith(path, std::string_view(".DS_Store"))) {
                            //   Check for .DS_Store file
                            iter.increment(ec);
                        }
                        else {
                            //  configure the new path to save new file
                            boost::filesystem::path dropPath_ =
                                    dropPath / iter->path().parent_path().filename() / iter->path().filename();
                            //  function call
//                            func(path, dropPath_);
                            tie(grayImage, thresholdImage) = imageProcessing(path);

                            tie(contourImage, box)  = drawRect(thresholdImage, grayImage);
                            Mat finalImage = rotate90(contourImage, box);
                            writeImage(dropPath_.string(), finalImage);
                        }
                    }
                }
            }
        }
    }
}

