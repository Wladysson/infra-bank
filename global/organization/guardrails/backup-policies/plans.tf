resource "aws_backup_plan" "platform" {
  name = "platform-backup-plan"

  rule {
    rule_name         = "daily-backups"
    target_vault_name = aws_backup_vault.primary.name
    schedule          = "cron(0 3 * * ? *)"

    lifecycle {
      delete_after = 30
    }

    copy_action {
      destination_vault_arn = aws_backup_vault.cross_region.arn

      lifecycle {
        delete_after = 90
      }
    }
  }

  rule {
    rule_name         = "weekly-backups"
    target_vault_name = aws_backup_vault.primary.name
    schedule          = "cron(0 4 ? * SUN *)"

    lifecycle {
      delete_after = 180
    }
  }

  tags = local.common_tags
}