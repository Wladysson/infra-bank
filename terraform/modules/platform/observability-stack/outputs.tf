output "observability_namespace" {
  value = kubernetes_namespace.observability.metadata[0].name
}

output "grafana_release" {
  value = helm_release.grafana.name
}

output "prometheus_release" {
  value = helm_release.prometheus.name
}

output "loki_release" {
  value = helm_release.loki.name
}