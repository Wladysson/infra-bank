resource "kubernetes_annotations" "waf" {
  count = var.waf_acl_arn != null ? 1 : 0

  api_version = "networking.k8s.io/v1"
  kind        = "Ingress"

  metadata {
    name      = "platform-ingress"
    namespace = kubernetes_namespace.ingress.metadata[0].name
  }

  annotations = {
    "alb.ingress.kubernetes.io/wafv2-acl-arn" = var.waf_acl_arn
  }
}