variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "waf_acl_arn" {
  description = "WAF ACL ARN"
  type        = string
  default     = null
}

variable "certificate_arn" {
  description = "ACM certificate ARN"
  type        = string
}