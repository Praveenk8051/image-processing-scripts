### image-processing-scripts

###### Image processing based scripts to detect the contours of object on white sheet by processing the image. Also helps in rotating the product to 90 deg irrespective of its angle.

* ```imageProcessing.cpp```: processes the image to grayscale and thresholds the pixel values. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/imageProcessing.cpp)
* ```drawRect.cpp```: Detects the contours, takes the largest area and draw bounding box. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/drawRect.cpp)
* ```detectAngle.cpp```: Detects the angle of the bounding box w.r.t axis. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/detectAngle.cpp)
* ```rotate90.cpp```: Rotates the box to 90 deg w.r.t axis. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/rotate90.cpp)
* ```processFiles.cpp```: Loops around all jpeg images and perform the above operation. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/processFiles.cpp)
* ```main_source.cpp```: call processFiles.cpp. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/main_source.cpp)
