resource "aws_config_config_rule" "eks_cluster_secrets_encrypted" {
  name = "eks-cluster-secrets-encrypted"

  source {
    owner             = "AWS"
    source_identifier = "EKS_CLUSTER_SECRETS_ENCRYPTED"
  }

  tags = local.common_tags
}

resource "aws_config_config_rule" "eks_endpoint_no_public_access" {
  name = "eks-endpoint-no-public-access"

  source {
    owner             = "AWS"
    source_identifier = "EKS_ENDPOINT_NO_PUBLIC_ACCESS"
  }

  tags = local.common_tags
}