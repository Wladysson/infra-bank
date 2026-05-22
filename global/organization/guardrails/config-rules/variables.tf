variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "config_bucket_name" {
  description = "S3 bucket for AWS Config"
  type        = string
}

variable "sns_topic_arn" {
  description = "SNS topic for notifications"
  type        = string
}