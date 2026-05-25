variable "bucket_name" {
  description = "Terraform state bucket"
  type        = string
  default     = "platform-global-tfstate"
}

variable "kms_key_arn" {
  description = "KMS key ARN"
  type        = string
}

variable "retention_days" {
  description = "Lifecycle retention"
  type        = number
  default     = 365
}