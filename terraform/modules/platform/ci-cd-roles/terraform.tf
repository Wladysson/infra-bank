resource "aws_iam_role" "terraform" {
  name = "${var.environment}-terraform"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          AWS = "*"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}