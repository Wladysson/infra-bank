resource "aws_organizations_account" "accounts" {
  for_each = var.accounts

  name      = each.value.name
  email     = each.value.email
  parent_id = aws_organizations_organizational_unit.ous[each.value.ou].id

  close_on_deletion = false

  tags = {
    AccountType = each.key
  }
}