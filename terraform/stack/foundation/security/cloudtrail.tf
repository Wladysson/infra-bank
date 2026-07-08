resource "aws_cloudtrail" "platform" {
  name                          = "${var.environment}-platform-cloudtrail"
  s3_bucket_name                = var.cloudtrail_bucket_name
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true

  kms_key_id = module.kms.key_arn

  event_selector {
    read_write_type           = "All"
    include_management_events = true
  }

  tags = local.common_tags
}