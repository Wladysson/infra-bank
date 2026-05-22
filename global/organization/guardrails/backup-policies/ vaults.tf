resource "aws_backup_vault" "primary" {
  name = var.backup_vault_name

  tags = local.common_tags
}

resource "aws_backup_vault" "cross_region" {
  provider = aws.dr

  name = var.cross_region_vault_name

  tags = local.common_tags
}