# Dual Monitor Image Splitter

## This repository contains three scripts to help you split large image files across two monitors:

1.  paper-split.sh: Splits a single image file into two equal halves, accounting for bezel gap removing a portion of the image where the bezel is(optional), retaining the original image.
2.  file-mover.sh: Moves the original, the left and right halves of the split images to separate directories.
3.  split-all.sh: Automates the process of splitting and moving all images in the current directory.

## Prerequisites

1.  ImageMagick (run the following command)

## How to use

1.  Download the scripts to your desired location
2.  Update permissions to make them executable:
    ```
    sudo chmod +x paper-split.sh file-mover.sh split-all.sh
    ```
3.  Measure the distance between monitor images, bezel and any gaps. The value should be in hundredths of a inch, for instance .75 inches will be 75, or 1 inch will be 100. Set 'GAP_BETWEEN_MONITORS' in paper-split.sh to the distance between monitors, if no gap is desired, placing a 0 or 1 should be fine.
4.  Place all the images you want to split in the same directory as the scripts.
5.  Run split-all.sh by executing the following in the terminal. (Note do not use sudo here)
    ```
    ./split-all.sh
    ```

The left and right halves of the split images will be moved to the left screen and right screen directories, respectively. Any images that were not split will be moved to the alreadysplit directory.

## Note on image resizing

The script resizes input images to the resolution of the current monitors. It's important to ensure that the aspect ratio of the original image matches or is close to the aspect ratio of the monitors combined, so 2x 1440p monitors are 5120x1440p 32:9. Images with resolutions smaller than required may appear pixelated, while larger images may be distorted. Cropping the images beforehand to a closer aspect ratio of the combined monitors can help minimize distortion.
