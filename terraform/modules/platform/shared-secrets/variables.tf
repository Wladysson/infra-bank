variable "environment" {
  description = "Environment"
  type        = string
}

variable "kms_key_deletion_window" {
  description = "KMS deletion window"
  type        = number
  default     = 30
}