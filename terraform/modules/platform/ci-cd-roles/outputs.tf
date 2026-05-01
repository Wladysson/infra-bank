output "github_actions_role_arn" {
  value = aws_iam_role.github_actions.arn
}

output "terraform_role_arn" {
  value = aws_iam_role.terraform.arn
}

output "argocd_role_arn" {
  value = aws_iam_role.argocd.arn
}