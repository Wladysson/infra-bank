resource "aws_route53_record" "api" {
  zone_id = aws_route53_zone.root.zone_id
  name    = "api.${var.root_domain}"
  type    = "CNAME"
  ttl     = 300

  records = [
    "alb.platform.internal"
  ]
}

resource "aws_route53_record" "auth" {
  zone_id = aws_route53_zone.root.zone_id
  name    = "auth.${var.root_domain}"
  type    = "CNAME"
  ttl     = 300

  records = [
    "alb.platform.internal"
  ]
}