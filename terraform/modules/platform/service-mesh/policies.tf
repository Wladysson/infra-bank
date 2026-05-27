resource "kubernetes_manifest" "default_authorization" {
  manifest = {
    apiVersion = "security.istio.io/v1beta1"
    kind       = "AuthorizationPolicy"

    metadata = {
      name      = "default-deny"
      namespace = "istio-system"
    }

    spec = {}
  }
}