locals {
  service_name = "batch"
  namespace    = "core"

  tags = {
    Service     = "batch"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}