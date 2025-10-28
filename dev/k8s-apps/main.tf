module "k8s-apps" {
  source                 = "../../modules/k8s-apps"
  appsets_chart_version  = var.appsets_chart_version
  gateways_chart_version = var.gateways_chart_version
  gw_project_id          = var.gw_project_id
  gw_class               = var.gw_class
  github_token           = var.github_token
  github_token_id        = var.github_token_id
}
