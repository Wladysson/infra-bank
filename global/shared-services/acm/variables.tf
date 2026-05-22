variable "root_domain" {
  description = "Primary platform domain"
  type        = string
  default     = "platform.com"
}

variable "private_domain" {
  description = "Internal domain"
  type        = string
  default     = "internal.platform.local"
}

variable "public_domains" {
  description = "Public certificates"

  type = list(string)

  default = [
    "*.platform.com",
    "api.platform.com",
    "auth.platform.com"
  ]
}