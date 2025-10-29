module "k8s-apps" {
  source                 = "git::https://github.com/mdefenders/terraform-gcp-k8s-apps.git?ref=dev"
  appsets_chart_version  = var.appsets_chart_version
  gateways_chart_version = var.gateways_chart_version
  gw_project_id          = var.gw_project_id
  gw_class               = var.gw_class
  github_token           = var.github_token
  github_token_id        = var.github_token_id
  appset_name            = var.appset_name
  app_chart_name         = var.app_chart_name
  app_chart_repo         = var.app_chart_repo
  app_chart_version      = var.app_chart_version
  github_org             = var.github_org
  deploy_appsets         = var.deploy_appsets
}
