output "ledger_db_endpoint" {
  value = aws_db_instance.ledger.address
}

output "ledger_service_name" {
  value = module.ledger_app.service_name
}