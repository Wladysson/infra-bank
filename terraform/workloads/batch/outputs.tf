output "batch_db_endpoint" {
  value = aws_db_instance.batch.address
}

output "batch_service_name" {
  value = module.batch_app.service_name
}