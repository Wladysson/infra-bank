resource "aws_organizations_policy_attachment" "root" {
  policy_id = aws_organizations_policy.required_tags.id
  target_id = var.organization_root_id
}