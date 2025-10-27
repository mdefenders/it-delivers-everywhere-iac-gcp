terraform {
  required_version = ">= 1.12.2, < 1.14.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.8.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 3.0.2"
    }
  }
}

data "google_client_config" "default" {}
