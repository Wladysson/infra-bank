resource "kubernetes_namespace" "ingress" {
  metadata {
    name = "ingress-system"

    labels = {
      managed-by = "terraform"
      component  = "ingress"
    }
  }
}