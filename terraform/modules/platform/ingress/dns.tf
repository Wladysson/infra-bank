resource "kubernetes_manifest" "external_dns" {
  manifest = {
    apiVersion = "networking.k8s.io/v1"
    kind       = "Ingress"

    metadata = {
      name      = "external-dns"
      namespace = kubernetes_namespace.ingress.metadata[0].name
      annotations = {
        "external-dns.alpha.kubernetes.io/hostname" = "api.platform.com"
      }
    }
  }
}