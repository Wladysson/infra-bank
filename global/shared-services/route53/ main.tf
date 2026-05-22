locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "route53"
    Environment = "global"
  }
}