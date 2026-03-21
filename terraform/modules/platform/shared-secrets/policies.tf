data "aws_iam_policy_document" "shared_secrets" {

  statement {
    sid    = "AllowSecretsRead"
    effect = "Allow"

    actions = [
      "secretsmanager:GetSecretValue",
      "secretsmanager:DescribeSecret"
    ]

    resources = [
      aws_secretsmanager_secret.database.arn,
      aws_secretsmanager_secret.redis.arn,
      aws_secretsmanager_secret.kafka.arn
    ]
  }
}