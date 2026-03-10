output "auditoria_db_endpoint" {
  value = aws_db_instance.auditoria.address
}

output "auditoria_service_name" {
  value = module.auditoria_app.service_name
}
