resource "aws_sns_topic" "security_alerts" {
  name = "security-hub-alerts"

  tags = local.common_tags
}

resource "aws_sns_topic_subscription" "email" {
  topic_arn = aws_sns_topic.security_alerts.arn
  protocol  = "email"
  endpoint  = var.alarm_email
}

resource "aws_cloudwatch_event_rule" "security_findings" {
  name = "security-hub-findings"

  event_pattern = jsonencode({
    source = [
      "aws.securityhub"
    ]

    detail-type = [
      "Security Hub Findings - Imported"
    ]

    detail = {
      findings = {
        Severity = {
          Label = [
            "HIGH",
            "CRITICAL"
          ]
        }
      }
    }
  })
}

resource "aws_cloudwatch_event_target" "sns" {
  rule      = aws_cloudwatch_event_rule.security_findings.name
  target_id = "SecurityHubSNS"
  arn       = aws_sns_topic.security_alerts.arn
}