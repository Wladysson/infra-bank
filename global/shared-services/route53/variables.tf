variable "root_domain" {
  description = "Primary domain"
  type        = string
  default     = "platform.com"
}

variable "subdomains" {
  description = "Subdomains delegation"

  type = map(string)

  default = {
    dev     = "dev.platform.com"
    staging = "staging.platform.com"
    prod    = "platform.com"
    sandbox = "sandbox.platform.com"
  }
}