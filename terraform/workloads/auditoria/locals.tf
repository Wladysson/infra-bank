locals {
  service_name = "auditoria"
  namespace    = "core"

  tags = {
    Service     = "auditoria"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}