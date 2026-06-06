terraform {
  backend "s3" {
    bucket         = "platform-global-tfstate"
    key            = "foundation/networking/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "platform-tfstate-locks"
    encrypt        = true
  }
}