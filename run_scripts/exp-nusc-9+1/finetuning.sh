#!/bin/bash
GPUID="0"
CUDA_VISIBLE_DEVICES=$GPUID python3 main.py \
    --tag July22-expnusc-9+1-finetuning \
    --cfg-path configs/exp-nusc-9+1/finetuning.py \
    --mode train