output "security_kms_key_arn" {
  description = "Security KMS key ARN"
  value       = aws_kms_key.security.arn
}

output "security_kms_alias" {
  description = "Security KMS alias"
  value       = aws_kms_alias.security.name
}

output "guardduty_detector_id" {
  description = "GuardDuty detector ID"
  value       = aws_guardduty_detector.platform.id
}

output "waf_arn" {
  description = "Platform WAF ARN"
  value       = aws_wafv2_web_acl.platform.arn
}

output "security_group_id" {
  description = "Security services security group"
  value       = aws_security_group.security_services.id
}