module "k8s" {
  source = "git::https://github.com/mdefenders/terraform-gcp-k8s.git?ref=dev"
  location = var.location
  cluster_name = var.cluster_name
  use_spot_nodes = var.use_spot_nodes
  gke_whitelist = var.gke_whitelist
}
