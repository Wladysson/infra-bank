output "payments_db_endpoint" {
  value = aws_db_instance.payments.address
}

output "payments_service_name" {
  value = module.payments_app.service_name
}