resource "aws_config_configuration_recorder" "platform" {
  name     = "${var.environment}-platform-config"
  role_arn = aws_iam_role.config.arn

  recording_group {
    all_supported                 = true
    include_global_resource_types = true
  }
}

resource "aws_config_delivery_channel" "platform" {
  name           = "${var.environment}-platform-config"
  s3_bucket_name = var.config_bucket_name
}

resource "aws_config_configuration_recorder_status" "platform" {
  name       = aws_config_configuration_recorder.platform.name
  is_enabled = true

  depends_on = [
    aws_config_delivery_channel.platform
  ]
}