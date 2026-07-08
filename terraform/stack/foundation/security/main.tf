module "kms" {
  source = "../../../modules/aws/kms-key"

  key_name   = "${var.environment}-platform-security"
  description = "KMS key for platform security services"
}

module "waf" {
  source = "../../../modules/aws/waf"

  name = "${var.environment}-platform-waf"
}

module "cloudtrail" {
  source = "../../../modules/aws/cloudwatch"

  name = "${var.environment}-platform-cloudtrail"
}