resource "kubernetes_secret" "tls" {
  metadata {
    name      = "platform-tls"
    namespace = kubernetes_namespace.ingress.metadata[0].name
  }

  type = "kubernetes.io/tls"
}