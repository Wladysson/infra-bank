resource "aws_kms_key" "shared_secrets" {
  description             = "KMS key for shared secrets"
  deletion_window_in_days = var.kms_key_deletion_window
  enable_key_rotation     = true

  tags = merge(
    local.common_tags,
    {
      Name = "shared-secrets-kms"
    }
  )
}

resource "aws_kms_alias" "shared_secrets" {
  name          = "alias/shared-secrets"
  target_key_id = aws_kms_key.shared_secrets.key_id
}