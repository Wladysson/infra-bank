locals {
  service_name = "reconciliation"
  namespace    = "core"

  tags = {
    Service     = "reconciliation"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}