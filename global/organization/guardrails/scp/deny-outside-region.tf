resource "aws_organizations_policy" "deny_outside_region" {
  name        = "deny-outside-approved-regions"
  description = "Deny resource creation outside approved regions"
  type        = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DenyOutsideRegions"
        Effect = "Deny"

        NotAction = [
          "iam:*",
          "organizations:*",
          "route53:*",
          "cloudfront:*",
          "support:*"
        ]

        Resource = "*"

        Condition = {
          StringNotEquals = {
            "aws:RequestedRegion" = [
              "us-east-1",
              "us-west-2"
            ]
          }
        }
      }
    ]
  })
}