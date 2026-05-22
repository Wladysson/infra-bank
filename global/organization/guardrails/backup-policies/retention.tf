resource "aws_backup_vault_lock_configuration" "primary" {
  backup_vault_name = aws_backup_vault.primary.name

  min_retention_days = 7
  max_retention_days = 3650

  changeable_for_days = 3
}

resource "aws_backup_vault_lock_configuration" "cross_region" {
  provider = aws.dr

  backup_vault_name = aws_backup_vault.cross_region.name

  min_retention_days = 30
  max_retention_days = 3650

  changeable_for_days = 7
}