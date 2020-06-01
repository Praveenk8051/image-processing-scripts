### image-processing-scripts

`image_processing_c++`
###### Image processing based c++ scripts to detect the contours of object on white sheet by processing the image. Also helps in rotating the product to 90 deg irrespective of its angle.

* ```imageProcessing.cpp```: processes the image to grayscale and thresholds the pixel values. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/imageProcessing.cpp)

* ```drawRect.cpp```: Detects the contours, takes the largest area and draw bounding box. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/drawRect.cpp)

* ```detectAngle.cpp```: Detects the angle of the bounding box w.r.t axis. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/detectAngle.cpp)

* ```rotate90.cpp```: Rotates the box to 90 deg w.r.t axis. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/rotate90.cpp)

* ```processFiles.cpp```: Loops around all jpeg images and perform the above operation. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/processFiles.cpp)

* ```main_source.cpp```: call processFiles.cpp. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/main_source.cpp)

`image_processing`
###### Image processing based python scripts.

* ```contour_detection.py```: Convert to grayscale, threshold values and detect contours. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/image_processing/contour_detection.py)

* ```image_processing,py```: Argument parser based script. Displays the skeleton of the product if taken on white background. Apply Image smooting(Guassian Blur), Morphological transformations and thresholding of value. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/image_processing/image_processing.py)

* ```edge_detection_display.py```: Argument parser based script. Applies Canny edge detector to detect edges. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/image_processing/edge_detection_display.py)

* ```mobilenet_keras.py```: Mobilenet architecture with datapipeline using Keras framework. The code for the same can be found [here](https://github.com/Praveenk8051/image-processing-scripts/blob/master/Image_processing_c%2B%2B/rotate90.cpp)
