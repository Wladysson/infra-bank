resource "aws_cloudwatch_log_metric_filter" "errors" {
  name           = "${var.environment}-application-errors"
  pattern        = "?ERROR ?Exception ?FATAL"
  log_group_name = var.application_log_group_name

  metric_transformation {
    name      = "ApplicationErrors"
    namespace = "${var.environment}/Application"
    value     = "1"
  }
}

resource "aws_cloudwatch_metric_alarm" "application_errors" {
  alarm_name          = "${var.environment}-application-errors"
  alarm_description   = "Application errors detected"
  comparison_operator = "GreaterThanThreshold"

  evaluation_periods = 2
  metric_name        = "ApplicationErrors"
  namespace          = "${var.environment}/Application"
  period             = 300
  statistic          = "Sum"
  threshold          = 10

  alarm_actions = [
    var.alerts_sns_topic_arn
  ]

  tags = local.common_tags
}