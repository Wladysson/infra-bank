resource "aws_iam_role" "ledger_role" {
  name = "ledger-irsa-${var.environment}"

  assume_role_policy = data.aws_iam_policy_document.irsa.json
}

data "aws_iam_policy_document" "irsa" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]

    principals {
      type        = "Federated"
      identifiers = ["arn:aws:iam::123456789:oidc-provider/eks"]
    }
  }
}