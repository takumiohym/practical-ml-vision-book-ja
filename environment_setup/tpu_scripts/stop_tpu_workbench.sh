MACHINE_NAME=tpu-notebook
TPU_NAME=vertex-wb-tpu
ZONE=us-central1-b

gcloud compute tpus stop $TPU_NAME --zone $ZONE
gcloud notebooks instances stop $MACHINE_NAME --location $ZONE
