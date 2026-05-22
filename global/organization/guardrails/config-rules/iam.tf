resource "aws_config_config_rule" "root_account_mfa_enabled" {
  name = "root-account-mfa-enabled"

  source {
    owner             = "AWS"
    source_identifier = "ROOT_ACCOUNT_MFA_ENABLED"
  }

  tags = local.common_tags
}

resource "aws_config_config_rule" "iam_user_no_policies_check" {
  name = "iam-user-no-policies-check"

  source {
    owner             = "AWS"
    source_identifier = "IAM_USER_NO_POLICIES_CHECK"
  }

  tags = local.common_tags
}