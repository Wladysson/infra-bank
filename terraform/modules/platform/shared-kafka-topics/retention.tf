resource "kafka_topic" "retention_config" {
  name               = "platform.audit.events"
  replication_factor = var.replication_factor
  partitions         = 3

  config = {
    "retention.ms"  = "604800000"
    "cleanup.policy" = "delete"
  }
}