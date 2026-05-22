resource "aws_organizations_policy" "deny_public_s3" {
  name        = "deny-public-s3"
  description = "Prevent public S3 buckets"

  type = "SERVICE_CONTROL_POLICY"

  content = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "DenyPublicBuckets"
        Effect = "Deny"

        Action = [
          "s3:PutBucketAcl",
          "s3:PutBucketPolicy"
        ]

        Resource = "*"

        Condition = {
          StringEquals = {
            "s3:x-amz-acl" = [
              "public-read",
              "public-read-write"
            ]
          }
        }
      }
    ]
  })
}