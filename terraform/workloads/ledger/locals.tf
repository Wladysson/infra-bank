locals {
  service_name = "ledger"
  namespace    = "core"

  tags = {
    Service     = "ledger"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}