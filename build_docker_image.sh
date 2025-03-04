#!/bin/bash -e
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

PROJECT_ID=$(gcloud config config-helper --format "value(configuration.properties.core.project)")
REPOSITORY_NAME=practical-ml-vision-book

image_name=us-docker.pkg.dev/${PROJECT_ID}/${REPOSITORY_NAME}
image_tag=latest
full_image_name=${image_name}/mlops:${image_tag}

if gcloud artifacts repositories describe $REPOSITORY_NAME --location=us > /dev/null 2>&1; then
    echo 'repository already exists'
else
    gcloud artifacts repositories create $REPOSITORY_NAME \
        --repository-format=docker \
        --location=us
fi

y >> /dev/null 2>&1 | gcloud auth configure-docker us-docker.pkg.dev

echo "Building ${full_image_name}"

export DOCKER_BUILDKIT=1
export BUILDKIT_PROGRESS=plain

cd "$(dirname "$0")"
docker build -t "${full_image_name}" .
docker push "$full_image_name"

# Output the strict image name (which contains the sha256 image digest)
docker inspect --format="{{index .RepoDigests 0}}" "${full_image_name}"
