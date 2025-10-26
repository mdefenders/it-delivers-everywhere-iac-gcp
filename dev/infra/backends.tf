terraform {
  backend "gcs" {
    bucket = "adt-terraform-state-buckets"
    prefix = "gke/clusters/dev/infra"
  }
}