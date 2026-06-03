resource "kafka_topic" "accounts_events" {
  name               = "accounts.events"
  replication_factor = var.replication_factor
  partitions         = var.partitions
}

resource "kafka_topic" "payments_events" {
  name               = "payments.events"
  replication_factor = var.replication_factor
  partitions         = var.partitions
}

resource "kafka_topic" "ledger_events" {
  name               = "ledger.events"
  replication_factor = var.replication_factor
  partitions         = var.partitions
}

resource "kafka_topic" "transactions_events" {
  name               = "transactions.events"
  replication_factor = var.replication_factor
  partitions         = var.partitions
}