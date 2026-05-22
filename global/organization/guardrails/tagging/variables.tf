variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "enforced_resource_types" {
  description = "Resources with mandatory tagging"

  type = list(string)

  default = [
    "ec2:instance",
    "rds:db",
    "s3:bucket",
    "eks:cluster",
    "elasticloadbalancing:loadbalancer"
  ]
}