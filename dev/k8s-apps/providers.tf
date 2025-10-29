provider "helm" {
  kubernetes = {
    host                   = data.terraform_remote_state.k8s.outputs.kubernetes_endpoint
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(data.terraform_remote_state.k8s.outputs.cluster_ca_certificate)
  }
}
provider "google" {
  project = data.terraform_remote_state.infra.outputs.project_id
  region  = data.terraform_remote_state.infra.outputs.region
}

provider "kubernetes" {
  host                   = "https://${data.terraform_remote_state.k8s.outputs.kubernetes_endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.terraform_remote_state.k8s.outputs.cluster_ca_certificate)
}
