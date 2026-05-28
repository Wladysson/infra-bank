variable "kafka_bootstrap_servers" {
  description = "Kafka bootstrap servers"
  type        = list(string)
}

variable "replication_factor" {
  description = "Kafka replication factor"
  type        = number
  default     = 3
}

variable "partitions" {
  description = "Default partitions"
  type        = number
  default     = 6
}