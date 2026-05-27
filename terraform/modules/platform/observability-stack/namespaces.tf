resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = "monitoring"

    labels = {
      managed-by = "terraform"
    }
  }
}

resource "kubernetes_namespace" "logging" {
  metadata {
    name = "logging"

    labels = {
      managed-by = "terraform"
    }
  }
}

resource "kubernetes_namespace" "tracing" {
  metadata {
    name = "tracing"

    labels = {
      managed-by = "terraform"
    }
  }
}