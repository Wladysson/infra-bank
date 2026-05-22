resource "aws_route53_record" "delegation" {
  for_each = aws_route53_zone.subdomains

  zone_id = aws_route53_zone.root.zone_id
  name    = each.value.name
  type    = "NS"
  ttl     = 300

  records = each.value.name_servers
}