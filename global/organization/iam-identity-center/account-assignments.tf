resource "aws_ssoadmin_account_assignment" "platform_admin_prod" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.administrator.arn

  principal_id   = aws_identitystore_group.platform_admins.group_id
  principal_type = "GROUP"

  target_id   = var.accounts["prod"]
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "devops_staging" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.power_user.arn

  principal_id   = aws_identitystore_group.devops.group_id
  principal_type = "GROUP"

  target_id   = var.accounts["staging"]
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "developers_dev" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.power_user.arn

  principal_id   = aws_identitystore_group.developers.group_id
  principal_type = "GROUP"

  target_id   = var.accounts["dev"]
  target_type = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "readonly_security" {
  instance_arn       = var.instance_arn
  permission_set_arn = aws_ssoadmin_permission_set.readonly.arn

  principal_id   = aws_identitystore_group.readonly.group_id
  principal_type = "GROUP"

  target_id   = var.accounts["security"]
  target_type = "AWS_ACCOUNT"
}