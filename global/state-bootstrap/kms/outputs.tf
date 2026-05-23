output "kms_key_id" {
  description = "KMS key ID"
  value       = aws_kms_key.tfstate.id
}

output "kms_key_arn" {
  description = "KMS key ARN"
  value       = aws_kms_key.tfstate.arn
}

output "kms_alias" {
  description = "KMS alias"
  value       = aws_kms_alias.tfstate.name
}