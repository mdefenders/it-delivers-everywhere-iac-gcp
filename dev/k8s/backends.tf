terraform {
  backend "gcs" {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/k8s"
  }
}
data "terraform_remote_state" "infra" {
  backend = "gcs"
  config = {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/infra"
  }
}
