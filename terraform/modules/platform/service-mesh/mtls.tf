resource "kubernetes_manifest" "strict_mtls" {
  count = var.enable_mtls ? 1 : 0

  manifest = {
    apiVersion = "security.istio.io/v1beta1"
    kind       = "PeerAuthentication"

    metadata = {
      name      = "default"
      namespace = "istio-system"
    }

    spec = {
      mtls = {
        mode = "STRICT"
      }
    }
  }
}