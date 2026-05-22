resource "aws_route53_record" "validation" {
  for_each = {
    for cert_key, cert in aws_acm_certificate.public :
    cert_key => cert.domain_validation_options[0]
  }

  zone_id = data.aws_route53_zone.root.zone_id

  name    = each.value.resource_record_name
  type    = each.value.resource_record_type
  ttl     = 300

  records = [
    each.value.resource_record_value
  ]
}

resource "aws_acm_certificate_validation" "public" {
  for_each = aws_acm_certificate.public

  certificate_arn = each.value.arn

  validation_record_fqdns = [
    aws_route53_record.validation[each.key].fqdn
  ]
}