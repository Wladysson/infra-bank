variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "identity_store_id" {
  description = "AWS Identity Store ID"
  type        = string
}

variable "instance_arn" {
  description = "IAM Identity Center Instance ARN"
  type        = string
}

variable "accounts" {
  description = "AWS account IDs"

  type = map(string)

  default = {
    dev        = "111111111111"
    staging    = "222222222222"
    prod       = "333333333333"
    security   = "444444444444"
    shared     = "555555555555"
  }
}