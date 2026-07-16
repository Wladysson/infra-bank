resource "aws_kms_key" "security" {
  description             = "${var.environment} platform security encryption key"
  deletion_window_in_days = var.kms_deletion_window
  enable_key_rotation     = true

  tags = local.common_tags
}

resource "aws_kms_alias" "security" {
  name          = "alias/${var.environment}/platform-security"
  target_key_id = aws_kms_key.security.key_id
}