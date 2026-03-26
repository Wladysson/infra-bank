locals {
  common_labels = {
    managed-by = "terraform"
    component  = "shared-security"
  }
}

resource "kubernetes_namespace" "security" {
  metadata {
    name = "security"

    labels = local.common_labels
  }
}