variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "backup_vault_name" {
  description = "Primary backup vault name"
  type        = string
  default     = "platform-backup-vault"
}

variable "cross_region_vault_name" {
  description = "Cross region vault name"
  type        = string
  default     = "platform-backup-cross-region"
}

variable "cross_region" {
  description = "Disaster recovery region"
  type        = string
  default     = "us-west-2"
}