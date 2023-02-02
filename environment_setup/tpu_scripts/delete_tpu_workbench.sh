MACHINE_NAME=tpu-notebook
TPU_NAME=vertex-wb-tpu
ZONE=us-central1-b

gcloud compute tpus delete $TPU_NAME
gcloud notebooks instances delete $MACHINE_NAME --location $ZONE
