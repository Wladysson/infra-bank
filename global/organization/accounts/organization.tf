resource "aws_organizations_organization" "this" {
  aws_service_access_principals = var.organization_service_access_principals

  enabled_policy_types = var.enabled_policy_types

  feature_set = "ALL"
}