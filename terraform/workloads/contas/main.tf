module "contas_app" {
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
    DB_HOST      = aws_db_instance.contas.address
    DB_NAME      = "contas_db"
    KAFKA_TOPIC  = "contas-events"
    ENVIRONMENT  = var.environment
  }
}