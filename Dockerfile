# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Builds a Docker image capable of running the code in the book
FROM gcr.io/deeplearning-platform-release/tf2-gpu.2-8:m94

RUN mkdir -p /src/practical-ml-vision-book

# copy some files to use in the pipeline
COPY 05_create_dataset/jpeg_to_tfrecord.py /src/practical-ml-vision-book/05_create_dataset/

COPY 10_mlops/components/create_dataset.sh /src/practical-ml-vision-book/10_mlops/components/
COPY 10_mlops/requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

WORKDIR /src/practical-ml-vision-book
