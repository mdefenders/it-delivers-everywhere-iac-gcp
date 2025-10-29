terraform {
  backend "gcs" {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/k8s-apps"
  }
}
data "terraform_remote_state" "infra" {
  backend = "gcs"
  config = {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/infra"
  }
}
data "terraform_remote_state" "k8s" {
  backend = "gcs"
  config = {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/k8s"
  }
}