locals {
  service_name = "backoffice"
  namespace    = "core"

  tags = {
    Service     = "backoffice"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}