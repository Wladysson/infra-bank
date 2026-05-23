resource "aws_kms_key" "tfstate" {
  description             = "KMS key for Terraform state encryption"
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = true

  policy = data.aws_iam_policy_document.kms.json

  tags = merge(
    local.common_tags,
    {
      Name = "platform-tfstate-kms"
    }
  )
}