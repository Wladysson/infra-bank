resource "aws_identitystore_user" "platform_admin" {
  identity_store_id = var.identity_store_id

  display_name = "Platform Admin"
  user_name    = "platform.admin"

  name {
    given_name  = "Platform"
    family_name = "Admin"
  }

  emails {
    value = "platform-admin@company.com"
    type  = "work"
  }
}

resource "aws_identitystore_group_membership" "platform_admin_membership" {
  identity_store_id = var.identity_store_id

  group_id  = aws_identitystore_group.platform_admins.group_id
  member_id = aws_identitystore_user.platform_admin.user_id
}