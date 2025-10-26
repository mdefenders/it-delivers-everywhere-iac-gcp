#!/usr/bin/env bash
PROJECT="chrome-flight-435809-p8"
CLUSTER="dev-gke-cluster"
REGION="us-central1"
ZONE="us-central1-a"
STATE_BUCKET="gs://adt-terraform-state-buckets/"

# Check if gcloud is already authenticated
if ! gcloud auth list --filter=status:ACTIVE --format="value(account)" | grep -q "."; then
  echo "No active gcloud account found. Running authentication..."
  gcloud auth login
  gcloud auth application-default login
else
  echo "gcloud is already authenticated. Skipping login."
fi

gcloud config set project $PROJECT
gcloud config set compute/zone $ZONE
gcloud config set compute/region $REGION
gcloud config list
gcloud components install gke-gcloud-auth-plugin gsutil

# Check if bucket exists before creation
if gsutil ls -b $STATE_BUCKET &>/dev/null; then
  echo "Bucket $STATE_BUCKET already exists. Skipping creation."
else
  gsutil mb -p $PROJECT -l $REGION $STATE_BUCKET
  gsutil versioning set on $STATE_BUCKET
fi

# Check if cluster exists before getting credentials
if gcloud container clusters describe $CLUSTER --zone $ZONE --project $PROJECT &>/dev/null; then
  gcloud container clusters get-credentials $CLUSTER --region=$ZONE --project=$PROJECT
else
  echo "Cluster $CLUSTER does not exist in project $PROJECT and zone $ZONE. Skipping get-credentials."
fi
