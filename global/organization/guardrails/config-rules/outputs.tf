output "config_rules" {
  description = "AWS Config Rules"

  value = [
    aws_config_config_rule.s3_bucket_public_read_prohibited.name,
    aws_config_config_rule.s3_bucket_server_side_encryption_enabled.name,
    aws_config_config_rule.root_account_mfa_enabled.name,
    aws_config_config_rule.iam_user_no_policies_check.name,
    aws_config_config_rule.restricted_ssh.name,
    aws_config_config_rule.restricted_common_ports.name,
    aws_config_config_rule.encrypted_volumes.name,
    aws_config_config_rule.rds_storage_encrypted.name,
    aws_config_config_rule.eks_cluster_secrets_encrypted.name,
    aws_config_config_rule.eks_endpoint_no_public_access.name
  ]
}