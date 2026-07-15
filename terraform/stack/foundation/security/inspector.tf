resource "aws_inspector2_enabler" "platform" {
  account_ids = [data.aws_caller_identity.current.account_id]

  resource_types = [
    "ECR",
    "EC2"
  ]
}