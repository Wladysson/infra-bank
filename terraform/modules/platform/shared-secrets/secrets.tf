resource "aws_secretsmanager_secret" "database" {
  name       = "shared/database"
  kms_key_id = aws_kms_key.shared_secrets.arn

  tags = local.common_tags
}

resource "aws_secretsmanager_secret" "redis" {
  name       = "shared/redis"
  kms_key_id = aws_kms_key.shared_secrets.arn

  tags = local.common_tags
}

resource "aws_secretsmanager_secret" "kafka" {
  name       = "shared/kafka"
  kms_key_id = aws_kms_key.shared_secrets.arn

  tags = local.common_tags
}