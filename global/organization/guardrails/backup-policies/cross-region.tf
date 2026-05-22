provider "aws" {
  alias  = "dr"
  region = var.cross_region
}

resource "aws_backup_vault_policy" "primary" {
  backup_vault_name = aws_backup_vault.primary.name

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "AllowBackupAccess"
        Effect = "Allow"

        Principal = "*"

        Action = [
          "backup:StartBackupJob",
          "backup:DescribeBackupVault"
        ]

        Resource = "*"
      }
    ]
  })
}