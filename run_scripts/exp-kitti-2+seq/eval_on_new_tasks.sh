#!/bin/bash
CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200817-expkitti2+seq-B3to5lwfnew-eval \
    --cfg-path configs/exp-kitti-2+seq/B3to5lwfnew-eval.py \
    --mode test

CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200817-expkitti2+seq-B3to5jointtrainingnew-eval \
    --cfg-path configs/exp-kitti-2+seq/B3to5jointtrainingnew-eval.py \
    --mode test

CUDA_VISIBLE_DEVICES=$1 python3 main.py \
    --tag 20200817-expkitti2+seq-B3to5finetuningnew-eval \
    --cfg-path configs/exp-kitti-2+seq/B3to5finetuningnew-eval.py \
    --mode test

# CUDA_VISIBLE_DEVICES=$1 python3 main.py \
#     --tag 20200817-expkitti2+seq-A1to5new-eval \
#     --cfg-path configs/exp-kitti-2+seq/A1to5new-eval.py \
#     --mode test