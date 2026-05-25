locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "tfstate-s3"
    Environment = "global"
  }
}