resource "kafka_acl" "accounts_producer" {
  resource_name       = kafka_topic.accounts_events.name
  resource_type       = "Topic"
  acl_principal       = "User:accounts-service"
  acl_host            = "*"
  acl_operation       = "Write"
  acl_permission_type = "Allow"
}

resource "kafka_acl" "accounts_consumer" {
  resource_name       = kafka_topic.accounts_events.name
  resource_type       = "Topic"
  acl_principal       = "User:accounts-service"
  acl_host            = "*"
  acl_operation       = "Read"
  acl_permission_type = "Allow"
}