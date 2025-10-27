variable "cluster_name" {
  type        = string
  description = "Name of the GKE cluster"
}
variable "location" {
  type        = string
  description = "GCP location for the GKE cluster"
}
variable "use_spot_nodes" {
  description = "Use spot VMs for the GKE nodes."
  type        = bool
}
variable "gke_whitelist" {
  type        = string
  description = "GKE master authorized networks whitelist"
}
