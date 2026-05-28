resource "helm_release" "gateway" {
  name       = "istio-ingressgateway"
  repository = "https://istio-release.storage.googleapis.com/charts"
  chart      = "gateway"
  namespace  = "istio-system"

  depends_on = [
    helm_release.istiod
  ]
}