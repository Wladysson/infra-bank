resource "aws_acmpca_certificate_authority" "internal_ca" {
  type = "ROOT"

  permanent_deletion_time_in_days = 7

  certificate_authority_configuration {

    key_algorithm     = "RSA_2048"
    signing_algorithm = "SHA256WITHRSA"

    subject {
      common_name = var.private_domain
    }
  }

  tags = merge(
    local.common_tags,
    {
      Type = "private-ca"
    }
  )
}

resource "aws_acm_certificate" "private" {
  domain_name               = "*.${var.private_domain}"
  certificate_authority_arn = aws_acmpca_certificate_authority.internal_ca.arn

  tags = merge(
    local.common_tags,
    {
      CertificateType = "private"
    }
  )
}