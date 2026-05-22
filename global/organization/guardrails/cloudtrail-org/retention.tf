resource "aws_s3_bucket_lifecycle_configuration" "cloudtrail_retention" {
  bucket = aws_s3_bucket.cloudtrail_logs.id

  rule {
    id     = "cloudtrail-retention"
    status = "Enabled"

    expiration {
      days = 2555
    }

    noncurrent_version_expiration {
      noncurrent_days = 365
    }
  }
}