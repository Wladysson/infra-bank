locals {
  service_name = "contas"
  namespace    = "core"

  tags = {
    Service     = "contas"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}