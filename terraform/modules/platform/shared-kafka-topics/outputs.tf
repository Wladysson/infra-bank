output "topics" {
  value = [
    kafka_topic.accounts_events.name,
    kafka_topic.payments_events.name,
    kafka_topic.ledger_events.name,
    kafka_topic.transactions_events.name
  ]
}