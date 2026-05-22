variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "trail_name" {
  description = "Organization CloudTrail name"
  type        = string
  default     = "organization-cloudtrail"
}

variable "log_retention_days" {
  description = "CloudWatch log retention"
  type        = number
  default     = 365
}

variable "alarm_email" {
  description = "Security alarm email"
  type        = string
}