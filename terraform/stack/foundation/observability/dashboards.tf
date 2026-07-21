resource "aws_cloudwatch_dashboard" "platform" {
  dashboard_name = "${var.environment}-platform-observability"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title = "Platform Metrics"

          metrics = [
            [
              "AWS/EC2",
              "CPUUtilization",
              "Environment",
              var.environment
            ]
          ]

          period = 300
          stat   = "Average"
          region = var.aws_region
        }
      }
    ]
  })
}