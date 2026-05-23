resource "aws_kms_alias" "tfstate" {
  name          = var.key_alias
  target_key_id = aws_kms_key.tfstate.key_id
}