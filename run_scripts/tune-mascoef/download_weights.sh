#!/bin/bash
apt-get update && apt-get install -y unzip

cd /usr/app/incdet3/saved_weights/
wget --no-check-certificate \
     --no-proxy 'https://pyun-data.s3.amazonaws.com/IncDet3/Weights/20200813-expkitti2%2B3-saved_weights.zip' \
     --output-document=/usr/app/incdet3/saved_weights/incdet-saveweights.zip
unzip incdet-saveweights.zip

wget --no-check-certificate \
     --no-proxy 'https://pyun-data-hk.s3.ap-east-1.amazonaws.com/IncDet3/Weights/20201006-masweights-tuneregcoef.zip' \
     --output-document=/usr/app/incdet3/saved_weights/incdet-saveweights.zip
unzip incdet-saveweights.zip