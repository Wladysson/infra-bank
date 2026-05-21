variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "organization_service_access_principals" {
  description = "AWS services enabled for organization integration"
  type        = list(string)

  default = [
    "cloudtrail.amazonaws.com",
    "config.amazonaws.com",
    "guardduty.amazonaws.com",
    "securityhub.amazonaws.com",
    "account.amazonaws.com"
  ]
}

variable "enabled_policy_types" {
  description = "Enabled AWS Organizations policy types"
  type        = list(string)

  default = [
    "SERVICE_CONTROL_POLICY"
  ]
}

variable "accounts" {
  description = "Organization accounts"

  type = map(object({
    email = string
    name  = string
    ou    = string
  }))

  default = {
    security = {
      email = "security@company.com"
      name  = "security-account"
      ou    = "Security"
    }

    audit = {
      email = "audit@company.com"
      name  = "audit-account"
      ou    = "Security"
    }

    shared = {
      email = "shared@company.com"
      name  = "shared-services-account"
      ou    = "Infrastructure"
    }

    dev = {
      email = "dev@company.com"
      name  = "dev-account"
      ou    = "Development"
    }

    staging = {
      email = "staging@company.com"
      name  = "staging-account"
      ou    = "Staging"
    }

    prod = {
      email = "prod@company.com"
      name  = "prod-account"
      ou    = "Production"
    }

    sandbox = {
      email = "sandbox@company.com"
      name  = "sandbox-account"
      ou    = "Sandbox"
    }
  }
}