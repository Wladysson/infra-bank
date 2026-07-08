resource "aws_guardduty_detector" "platform" {
  enable = true

  finding_publishing_frequency = "FIFTEEN_MINUTES"

  tags = local.common_tags
}