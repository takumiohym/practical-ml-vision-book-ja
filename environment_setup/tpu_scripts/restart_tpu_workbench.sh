MACHINE_NAME=tpu-notebook
TPU_NAME=vertex-wb-tpu
ZONE=us-central1-b

gcloud compute tpus start $TPU_NAME
gcloud notebooks instances start $MACHINE_NAME --location $ZONE
