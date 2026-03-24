module "batch_app" {
  source = "../../modules/microservice"

  service_name = local.service_name
  namespace    = local.namespace

  image     = var.image
  replicas  = var.replicas

  cpu_request    = "200m"
  cpu_limit      = "500m"
  memory_request = "256Mi"
  memory_limit   = "512Mi"

  environment_variables = {
    DB_HOST      = aws_db_instance.batch.address
    DB_NAME      = "batch_db"
    KAFKA_TOPIC  = "batch-events"
    ENVIRONMENT  = var.environment
  }
}