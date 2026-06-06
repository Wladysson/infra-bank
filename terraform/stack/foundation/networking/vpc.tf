module "vpc" {
  source = "../../../modules/aws/vpc"

  vpc_name   = local.vpc_name
  cidr_block = var.vpc_cidr
}