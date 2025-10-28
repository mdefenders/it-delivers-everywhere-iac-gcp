variable "argocd_chart_version" {
  description = "The Helm release for ArgoCD."
  type        = string
  default     = "8.2.5"
}
variable "appsets_chart_version" {
  description = "Version of the argo-appsets Helm chart"
  type        = string
}
variable "gateways_chart_version" {
  description = "The Helm release for ArgoCD."
  type        = string
}
variable "gw_project_id" {
  description = "Project reference name for gateways."
  type        = string
}
variable "gw_class" {
  description = "Gateway class for GKE gateways."
  type        = string
}
variable "github_token_id" {
  description = "The Secret Manager secret ID for the GitHub token."
  type        = string
}
variable "github_token" {
  description = "The Secret Manager secret ID for the GitHub token."
  type        = string
}

