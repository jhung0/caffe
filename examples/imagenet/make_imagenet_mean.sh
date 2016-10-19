#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

CAFFE_DIR=/home/ubuntu/caffe/
EXAMPLE="${CAFFE_DIR}examples/try1"
DATA="${CAFFE_DIR}data/try1"
TOOLS="${CAFFE_DIR}build/tools"

TRAIN_DATA_ROOT="${CAFFE_DIR}examples/try1/train"

#EXAMPLE=examples/imagenet
#DATA=data/ilsvrc12
#TOOLS=build/tools

$TOOLS/compute_image_mean $EXAMPLE/try1_train_lmdb \
  $DATA/imagenet_mean.binaryproto

echo "Done."
