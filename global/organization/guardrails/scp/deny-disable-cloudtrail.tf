resource "aws_organizations_policy" "deny_disable_cloudtrail" {
  name        = "deny-disable-cloudtrail"
  description = "Prevent disabling CloudTrail"

  type = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DenyCloudTrailChanges"
        Effect = "Deny"

        Action = [
          "cloudtrail:StopLogging",
          "cloudtrail:DeleteTrail",
          "cloudtrail:UpdateTrail"
        ]

        Resource = "*"
      }
    ]
  })
}