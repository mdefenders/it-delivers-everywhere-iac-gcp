provider "google" {
  project = data.terraform_remote_state.infra.outputs.project_id
  region  = data.terraform_remote_state.infra.outputs.region
}