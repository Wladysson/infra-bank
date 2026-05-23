variable "bucket_name" {
  description = "Terraform state bucket"
  type        = string
  default     = "platform-global-tfstate"
}

variable "lock_table_name" {
  description = "Terraform lock table"
  type        = string
  default     = "platform-tfstate-locks"
}