import cv2
import argparse


def process_and_display(path):
    img = cv2.imread(path)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    blurred = cv2.pyrMeanShiftFiltering(img, 101, 131)
    gray = cv2.cvtColor(blurred, cv2.COLOR_BGR2GRAY)
    ret, threshold = cv2.threshold(gray, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU)
    _, contours, _ = cv2.findContours(threshold, cv2.RETR_LIST, cv2.CHAIN_APPROX_NONE)
    cv2.drawContours(img, contours, 0, (0, 0, 255), 6)
    cv2.namedWindow('Display', cv2.WINDOW_NORMAL)
    cv2.imshow('Display', img)
    cv2.waitKey()


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--image_path',
        type=str,
        default='',
        help='Path where image file reside'
    )
    args = parser.parse_args()
    process_and_display(args.image_path)
