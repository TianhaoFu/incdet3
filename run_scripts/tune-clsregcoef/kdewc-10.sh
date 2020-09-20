#!/bin/bash

CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200912-tune-clsregcoef-kitti2+3-kdewc-cv0-10 \
    --cfg-path configs/tune-clsregcoef/kdewc-cv0-10.py \
    --mode train

CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200912-tune-clsregcoef-kitti2+3-kdewc-cv1-10 \
    --cfg-path configs/tune-clsregcoef/kdewc-cv1-10.py \
    --mode train

CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200912-tune-clsregcoef-kitti2+3-kdewc-cv2-10 \
    --cfg-path configs/tune-clsregcoef/kdewc-cv2-10.py \
    --mode train