locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "backup-policies"
    Environment = "global"
  }
}