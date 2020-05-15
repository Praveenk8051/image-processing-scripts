
import cv2
import numpy as np

path = r'C:\Users\MY PC\Desktop\images_firstDraft\all_images\image2.jpg'
# import image
image = cv2.imread(path)

# grayscale
gray = cv2.cvtColor(image,cv2.COLOR_BGR2GRAY)
cv2.imshow('gray', gray)
cv2.waitKey(0)
# binary
ret,thresh = cv2.threshold(gray, 127, 255, cv2.THRESH_BINARY_INV)
cv2.imshow('second', thresh)
cv2.waitKey(0)
# dilation
kernel = np.ones((1,1), np.uint8)
img_dilation = cv2.dilate(thresh, kernel, iterations=1)
cv2.imshow('dilated', img_dilation)
cv2.waitKey(0)

# find contours - cv2.findCountours() function changed from OpenCV3 to OpenCV4:
# now it have only two parameters instead of 3
cv2MajorVersion = cv2.__version__.split(".")[0]
# check for contours on thresh
if int(cv2MajorVersion) == 4:
    ctrs, hier = cv2.findContours(img_dilation.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
else:
    im2, ctrs, hier = cv2.findContours(img_dilation.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
# sort contours
sorted_ctrs = sorted(ctrs, key=lambda ctr: cv2.boundingRect(ctr)[0])

for i, ctr in enumerate(sorted_ctrs):
    # Get bounding box
    x, y, w, h = cv2.boundingRect(ctr)

    # Getting ROI
    roi = image[y:y + h, x:x + w]
    # show ROI
    # cv2.imshow('segment no:'+str(i),roi)
    cv2.rectangle(image, (x, y), (x + w, y + h), (0, 255, 0), 2)
    # cv2.waitKey(0)
    if w > 15 and h > 15:
        cv2.imwrite(r'C:\Users\MY PC\Desktop\images_firstDraft\all_images\image2_seg.jpg'.format(i), roi)