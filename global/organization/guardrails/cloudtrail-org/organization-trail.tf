resource "aws_cloudtrail" "organization" {
  name = var.trail_name

  s3_bucket_name = aws_s3_bucket.cloudtrail_logs.id

  kms_key_id = aws_kms_key.cloudtrail.arn

  cloud_watch_logs_group_arn = "${aws_cloudwatch_log_group.cloudtrail.arn}:*"

  cloud_watch_logs_role_arn = aws_iam_role.cloudtrail_cloudwatch.arn

  is_multi_region_trail         = true
  is_organization_trail         = true
  enable_log_file_validation    = true
  include_global_service_events = true

  depends_on = [
    aws_s3_bucket.cloudtrail_logs
  ]

  tags = local.common_tags
}