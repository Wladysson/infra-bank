output "public_certificates" {
  description = "Public ACM certificates"

  value = {
    for k, v in aws_acm_certificate_validation.public :
    k => v.certificate_arn
  }
}

output "private_ca_arn" {
  description = "Private CA ARN"
  value       = aws_acmpca_certificate_authority.internal_ca.arn
}

output "private_certificate_arn" {
  description = "Private ACM certificate"
  value       = aws_acm_certificate.private.arn
}