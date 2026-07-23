resource "aws_s3_bucket" "prometheus" {
  bucket = "${var.environment}-platform-prometheus-metrics"

  tags = merge(
    local.common_tags,
    {
      Component = "prometheus"
    }
  )
}

resource "aws_s3_bucket_server_side_encryption_configuration" "prometheus" {
  bucket = aws_s3_bucket.prometheus.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_key_arn
      sse_algorithm     = "aws:kms"
    }
  }
}