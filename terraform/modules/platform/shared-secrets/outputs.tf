output "kms_key_arn" {
  value = aws_kms_key.shared_secrets.arn
}

output "database_secret_arn" {
  value = aws_secretsmanager_secret.database.arn
}

output "redis_secret_arn" {
  value = aws_secretsmanager_secret.redis.arn
}

output "kafka_secret_arn" {
  value = aws_secretsmanager_secret.kafka.arn
}