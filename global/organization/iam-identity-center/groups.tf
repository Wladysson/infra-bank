resource "aws_identitystore_group" "platform_admins" {
  identity_store_id = var.identity_store_id

  display_name = "PlatformAdmins"
  description  = "Platform administrators"
}

resource "aws_identitystore_group" "devops" {
  identity_store_id = var.identity_store_id

  display_name = "DevOps"
  description  = "DevOps engineers"
}

resource "aws_identitystore_group" "developers" {
  identity_store_id = var.identity_store_id

  display_name = "Developers"
  description  = "Application developers"
}

resource "aws_identitystore_group" "readonly" {
  identity_store_id = var.identity_store_id

  display_name = "ReadOnly"
  description  = "Read only access"
}