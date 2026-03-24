output "contas_db_endpoint" {
  value = aws_db_instance.contas.address
}

output "contas_service_name" {
  value = module.contas_app.service_name
}