output "kubernetes_endpoint" {
  value = module.k8s.kubernetes_endpoint
}
output "cluster_ca_certificate" {
  value = module.k8s.cluster_ca_certificate
}
