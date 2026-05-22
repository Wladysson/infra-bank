resource "aws_config_config_rule" "s3_bucket_public_read_prohibited" {
  name = "s3-bucket-public-read-prohibited"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }

  tags = local.common_tags
}

resource "aws_config_config_rule" "s3_bucket_server_side_encryption_enabled" {
  name = "s3-bucket-server-side-encryption-enabled"

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_SERVER_SIDE_ENCRYPTION_ENABLED"
  }

  tags = local.common_tags
}