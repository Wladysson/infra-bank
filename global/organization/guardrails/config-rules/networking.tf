resource "aws_config_config_rule" "restricted_ssh" {
  name = "restricted-ssh"

  source {
    owner             = "AWS"
    source_identifier = "INCOMING_SSH_DISABLED"
  }

  tags = local.common_tags
}

resource "aws_config_config_rule" "restricted_common_ports" {
  name = "restricted-common-ports"

  source {
    owner             = "AWS"
    source_identifier = "RESTRICTED_INCOMING_TRAFFIC"
  }

  input_parameters = jsonencode({
    blockedPort1 = "20"
    blockedPort2 = "21"
    blockedPort3 = "3389"
  })

  tags = local.common_tags
}