variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_id" {
  description = "Platform VPC ID"
  type        = string
}

variable "config_bucket_name" {
  description = "AWS Config S3 bucket"
  type        = string
}

variable "cloudtrail_bucket_name" {
  description = "CloudTrail S3 bucket"
  type        = string
}

variable "kms_deletion_window" {
  description = "KMS key deletion window"
  type        = number
  default     = 30
}