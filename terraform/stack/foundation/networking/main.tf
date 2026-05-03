module "vpc" {
  source = "../../../modules/aws/vpc"

  vpc_name   = local.vpc_name
  cidr_block = var.vpc_cidr
}

module "subnets" {
  source = "../../../modules/aws/subnets"

  vpc_id              = module.vpc.vpc_id
  public_subnets      = var.public_subnets
  private_subnets     = var.private_subnets
  availability_zones  = var.availability_zones
}

module "routing" {
  source = "../../../modules/aws/route-tables"

  vpc_id = module.vpc.vpc_id
}

module "nat" {
  source = "../../../modules/aws/nat-gateway"

  public_subnet_id = module.subnets.public_subnet_ids[0]
}