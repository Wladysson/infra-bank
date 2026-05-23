resource "aws_kms_key_rotation_status" "tfstate" {
  key_id = aws_kms_key.tfstate.key_id

  enabled = true
}