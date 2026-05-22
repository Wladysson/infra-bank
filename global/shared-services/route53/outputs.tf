output "root_zone_id" {
  description = "Root hosted zone ID"
  value       = aws_route53_zone.root.zone_id
}

output "root_zone_name_servers" {
  description = "Root NS servers"
  value       = aws_route53_zone.root.name_servers
}

output "subdomain_zones" {
  description = "Subdomain hosted zones"

  value = {
    for k, v in aws_route53_zone.subdomains :
    k => {
      zone_id      = v.zone_id
      name_servers = v.name_servers
    }
  }
}