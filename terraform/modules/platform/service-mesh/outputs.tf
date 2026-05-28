output "istio_namespace" {
  value = "istio-system"
}

output "istiod_release" {
  value = helm_release.istiod.name
}

output "gateway_release" {
  value = helm_release.istio_gateway.name
}