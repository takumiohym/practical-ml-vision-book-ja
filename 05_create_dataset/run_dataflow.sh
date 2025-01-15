#!/bin/bash

PROJECT=$(gcloud config get-value project)
BUCKET=${PROJECT}

INPUT=gs://practical-ml-vision-book-data/flowers_5_jpeg/flower_photos/all_data.csv
OUTPUT=gs://${BUCKET}/data/flower_tfrecords

## To run locally, uncomment these lines
#gsutil cat $INPUT | head -5 > /tmp/top.csv
#INPUT=/tmp/top.csv
#OUTPUT=./flower_images

# Run
echo "INPUT=$INPUT OUTPUT=$OUTPUT"
python3 -m jpeg_to_tfrecord \
       --all_data $INPUT \
       --labels_file gs://practical-ml-vision-book-data/flowers_5_jpeg/flower_photos/dict.txt \
       --project_id $PROJECT \
       --output_dir $OUTPUT
