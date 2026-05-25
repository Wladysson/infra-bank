resource "aws_s3_bucket" "tfstate" {
  bucket = var.bucket_name

  tags = merge(
    local.common_tags,
    {
      Name = var.bucket_name
    }
  )
}