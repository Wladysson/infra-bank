locals {
  service_name = "payments"
  namespace    = "core"

  tags = {
    Service     = "payments"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}