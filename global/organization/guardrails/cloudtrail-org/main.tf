locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "cloudtrail-org"
    Environment = "global"
  }
}