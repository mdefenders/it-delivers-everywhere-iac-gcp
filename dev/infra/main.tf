module "infra" {
  source = "git::https://github.com/mdefenders/terraform-gcp-infra.git?ref=dev"
  project_id        = var.project_id
  region            = var.region
  ssh_whitelist     = var.ssh_whitelist
  dev_whitelist     = var.dev_whitelist
  proxy_subnet_cidr = var.proxy_subnet_cidr
}
