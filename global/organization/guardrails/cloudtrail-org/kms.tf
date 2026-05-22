resource "aws_kms_key" "cloudtrail" {
  description             = "KMS key for organization CloudTrail"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = local.common_tags
}

resource "aws_kms_alias" "cloudtrail" {
  name          = "alias/cloudtrail-org"
  target_key_id = aws_kms_key.cloudtrail.key_id
}