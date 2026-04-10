output "security_namespace" {
  value = kubernetes_namespace.security.metadata[0].name
}

output "gatekeeper_release" {
  value = helm_release.gatekeeper.name
}

output "kyverno_release" {
  value = helm_release.kyverno.name
}

output "falco_release" {
  value = helm_release.falco.name
}