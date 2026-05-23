locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "tfstate-kms"
    Environment = "global"
  }
}