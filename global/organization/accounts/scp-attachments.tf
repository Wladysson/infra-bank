resource "aws_organizations_policy" "deny_leave_org" {
  name        = "deny-leave-organization"
  description = "Prevent accounts from leaving the organization"
  type        = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DenyLeaveOrganization"
        Effect = "Deny"

        Action = [
          "organizations:LeaveOrganization"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_organizations_policy_attachment" "security" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Security"].id
}

resource "aws_organizations_policy_attachment" "infrastructure" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Infrastructure"].id
}

resource "aws_organizations_policy_attachment" "development" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Development"].id
}

resource "aws_organizations_policy_attachment" "staging" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Staging"].id
}

resource "aws_organizations_policy_attachment" "production" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Production"].id
}

resource "aws_organizations_policy_attachment" "sandbox" {
  policy_id = aws_organizations_policy.deny_leave_org.id
  target_id = aws_organizations_organizational_unit.ous["Sandbox"].id
}