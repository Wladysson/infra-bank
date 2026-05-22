resource "aws_acm_certificate" "public" {
  for_each = toset(var.public_domains)

  domain_name       = each.value
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(
    local.common_tags,
    {
      CertificateType = "public"
      Domain          = each.value
    }
  )
}