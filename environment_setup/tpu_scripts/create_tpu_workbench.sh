MACHINE_NAME=tpu-notebook
TPU_NAME=vertex-wb-tpu

TPU_TYPE=v3-8 # v2-8 is more available usually.
ZONE=us-central1-b # TPU availability: https://cloud.google.com/tpu/docs/regions-zones
MACHINE_TYPE=n1-standard-8

gcloud config set compute/zone $ZONE

while ! gcloud compute tpus create $TPU_NAME \
    --version 2.8.2 \
    --accelerator-type $TPU_TYPE
do
    echo 'retry TPU creation'
    sleep 5
done

gcloud compute instances create $MACHINE_NAME \
    --machine-type  $MACHINE_TYPE \
    --image-project deeplearning-platform-release \
    --image-family tf-ent-2-8-cpu \
    --scopes cloud-platform \
    --metadata proxy-mode=project_editors,startup-script="echo \"export TPU_NAME=$TPU_NAME\" > /etc/profile.d/tpu-env.sh;" \
    --zone $ZONE

gcloud notebooks instances register $MACHINE_NAME --location $ZONE
