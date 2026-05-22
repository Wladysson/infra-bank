resource "aws_backup_selection" "rds" {
  iam_role_arn = aws_iam_role.backup.arn
  name          = "rds-backup-selection"
  plan_id       = aws_backup_plan.platform.id

  resources = [
    "arn:aws:rds:*:*:db:*"
  ]
}

resource "aws_backup_selection" "ebs" {
  iam_role_arn = aws_iam_role.backup.arn
  name          = "ebs-backup-selection"
  plan_id       = aws_backup_plan.platform.id

  resources = [
    "arn:aws:ec2:*:*:volume/*"
  ]
}