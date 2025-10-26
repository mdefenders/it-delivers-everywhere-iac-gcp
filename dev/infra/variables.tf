variable "region" {
  type        = string
  description = "Region for the GKE cluster"
}
variable "project_id" {
  type        = string
  description = "GCP project ID"
}
variable "ssh_whitelist" {
  description = "List of IPs/subnets allowed to access ovefr ssh."
  type        = list(string)
}
variable "public_access_enabled" {
  description = "Enable public access to the cluster workloads ingress."
  type        = bool
}
variable "dev_whitelist" {
  description = "List of IPs/subnets allowed to access dev services/load balancers."
  type        = list(string)
}
variable "proxy_subnet_cidr" {
  description = "CIDR for the proxy subnet."
  type        = string
}
variable "zone" {
  description = "The GCP zone."
  type        = string
}
