resource "kubernetes_namespace" "observability" {
  metadata {
    name = "observability"

    labels = {
      app         = "observability"
      managed-by  = "terraform"
      environment = var.environment
    }
  }
}

resource "helm_release" "prometheus" {
  name       = "kube-prometheus-stack"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = kubernetes_namespace.observability.metadata[0].name

  values = [
    file("${path.module}/values/prometheus.yaml")
  ]

  depends_on = [
    kubernetes_namespace.observability
  ]
}

resource "helm_release" "loki" {
  name       = "loki"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "loki"
  namespace  = kubernetes_namespace.observability.metadata[0].name

  depends_on = [
    kubernetes_namespace.observability
  ]
}

resource "helm_release" "grafana" {
  name       = "grafana"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  namespace  = kubernetes_namespace.observability.metadata[0].name

  depends_on = [
    kubernetes_namespace.observability
  ]
}