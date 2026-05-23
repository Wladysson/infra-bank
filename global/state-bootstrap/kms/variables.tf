variable "key_alias" {
  description = "KMS alias"
  type        = string
  default     = "alias/platform-tfstate"
}

variable "deletion_window_in_days" {
  description = "KMS deletion window"
  type        = number
  default     = 30
}