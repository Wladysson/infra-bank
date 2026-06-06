locals {
  vpc_name = "${var.environment}-platform-vpc"

  common_tags = {
    ManagedBy   = "Terraform"
    Environment = var.environment
    Layer       = "foundation"
  }
}