output "tfstate_bucket" {
  description = "Terraform state bucket"
  value       = aws_s3_bucket.tfstate.id
}

output "tfstate_bucket_arn" {
  description = "Terraform state bucket ARN"
  value       = aws_s3_bucket.tfstate.arn
}

output "lock_table_name" {
  description = "Terraform lock table"
  value       = aws_dynamodb_table.tfstate_lock.name
}