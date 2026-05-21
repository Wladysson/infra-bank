locals {
  common_tags = {
    ManagedBy  = "Terraform"
    Environment = "global"
    Project    = "platform"
    Component  = "organization"
  }

  organizational_units = [
    "Security",
    "Infrastructure",
    "Development",
    "Staging",
    "Production",
    "Sandbox"
  ]
}