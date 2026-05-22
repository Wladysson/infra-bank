variable "alarm_email" {
  description = "Security notifications email"
  type        = string
}

variable "enable_guardduty" {
  description = "Enable GuardDuty integration"
  type        = bool
  default     = true
}

variable "enable_inspector" {
  description = "Enable Inspector integration"
  type        = bool
  default     = true
}