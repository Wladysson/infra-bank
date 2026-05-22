locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Project    = "platform"
    Component  = "tagging-policy"
    Environment = "global"
  }

  required_tags = [
    "Environment",
    "Project",
    "Owner",
    "CostCenter",
    "ManagedBy",
    "DataClassification"
  ]
}