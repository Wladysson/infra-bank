output "reconciliation_db_endpoint" {
  value = aws_db_instance.reconciliation.address
}

output "reconciliation_service_name" {
  value = module.reconciliation_app.service_name
}