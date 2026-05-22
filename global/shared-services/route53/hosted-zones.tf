resource "aws_route53_zone" "root" {
  name = var.root_domain

  tags = merge(
    local.common_tags,
    {
      Name = var.root_domain
    }
  )
}

resource "aws_route53_zone" "subdomains" {
  for_each = var.subdomains

  name = each.value

  tags = merge(
    local.common_tags,
    {
      Name        = each.value
      Environment = each.key
    }
  )
}