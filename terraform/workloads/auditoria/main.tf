module "auditoria_app" {
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
    DB_HOST      = aws_db_instance.auditoria.address
    DB_NAME      = "auditoria_db"
    KAFKA_TOPIC  = "audit-events"
    ENVIRONMENT  = var.environment
  }
}