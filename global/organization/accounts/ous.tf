resource "aws_organizations_organizational_unit" "ous" {
  for_each = toset(local.organizational_units)

  name      = each.value
  parent_id = aws_organizations_organization.this.roots[0].id
}