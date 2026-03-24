output "backoffice_db_endpoint" {
  value = aws_db_instance.backoffice.address
}

output "backoffice_service_name" {
  value = module.backoffice_app.service_name
}