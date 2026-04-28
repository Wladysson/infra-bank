# prod/main.tf
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "company-terraform-state-prod"
    key            = "payments-service/prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Environment = "prod"
      Project     = var.project_name
      ManagedBy   = "Terraform"
      Owner       = "Platform Team"
    }
  }
}

module "payments_service" {
  source = "../../modules/payments-service"

  environment          = "prod"
  project_name         = var.project_name
  aws_region           = var.aws_region
  vpc_id               = var.vpc_id
  private_subnet_ids   = var.private_subnet_ids
  public_subnet_ids    = var.public_subnet_ids

  desired_count        = 3
  min_capacity         = 3
  max_capacity         = 10

  cpu                  = 1024
  memory               = 2048

  domain_name          = var.domain_name
  certificate_arn      = var.certificate_arn

  database_secret_arn  = var.database_secret_arn
  redis_endpoint       = var.redis_endpoint

  enable_waf           = true
  enable_auto_scaling  = true
  enable_monitoring    = true
}

# prod/terraform.tfvars
project_name         = "payments-service"
aws_region           = "us-east-1"

vpc_id               = "vpc-xxxxxxxx"
private_subnet_ids   = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
public_subnet_ids    = ["subnet-zzzzzzzz", "subnet-aaaaaaaa"]

domain_name          = "payments.seudominio.com"
certificate_arn      = "arn:aws:acm:us-east-1:123456789012:certificate/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

database_secret_arn  = "arn:aws:secretsmanager:us-east-1:123456789012:secret:prod/payments/db"
redis_endpoint       = "prod-payments-redis.xxxxxx.cache.amazonaws.com"
