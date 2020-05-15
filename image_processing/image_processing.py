import cv2
import numpy as np
import argparse
from matplotlib import pyplot as plt


def image_processing(path):
    """
    Set of image processing operations. Displays the skeleton of the product if taken on white background
    :param path: image file path
    :return: None
    """
    img = cv2.imread(path)
    img = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    blurred = cv2.GaussianBlur(img, (15, 15), 0)
    kernel = np.ones((12, 12), np.uint8)
    erosion = cv2.morphologyEx(blurred, cv2.MORPH_GRADIENT, kernel)
    erosion = cv2.GaussianBlur(erosion, (5, 5), 0)
    ret, erosion = cv2.threshold(erosion, 100, 100, cv2.THRESH_TRUNC)
    plt.imshow(erosion, cmap='gray')
    plt.xticks([]), plt.yticks([])
    plt.show()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--image_path',
        type=str,
        default='',
        help='Path where image file reside'
    )
    args = parser.parse_args()
    image_processing(args.image_path)
