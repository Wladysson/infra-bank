output "organization_id" {
  description = "AWS Organization ID"
  value       = aws_organizations_organization.this.id
}

output "organization_root_id" {
  description = "AWS Organization Root ID"
  value       = aws_organizations_organization.this.roots[0].id
}

output "organizational_units" {
  description = "Organizational Units"

  value = {
    for key, value in aws_organizations_organizational_unit.ous :
    key => value.id
  }
}

output "accounts" {
  description = "Organization accounts"

  value = {
    for key, value in aws_organizations_account.accounts :
    key => {
      id    = value.id
      arn   = value.arn
      email = value.email
      name  = value.name
    }
  }
}