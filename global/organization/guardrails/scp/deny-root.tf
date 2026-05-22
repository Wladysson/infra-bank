resource "aws_organizations_policy" "deny_root_user" {
  name        = "deny-root-user-actions"
  description = "Deny sensitive actions for root account"
  type        = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DenyRootUser"
        Effect = "Deny"

        Action = "*"

        Resource = "*"

        Condition = {
          StringLike = {
            "aws:PrincipalArn" = [
              "arn:aws:iam::*:root"
            ]
          }
        }
      }
    ]
  })
}