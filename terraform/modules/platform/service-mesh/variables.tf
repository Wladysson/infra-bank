variable "environment" {
  description = "Environment"
  type        = string
}

variable "enable_mtls" {
  description = "Enable mesh mTLS"
  type        = bool
  default     = true
}