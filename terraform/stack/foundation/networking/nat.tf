module "nat" {
  source = "../../../modules/aws/nat-gateway"

  public_subnet_id = module.subnets.public_subnet_ids[0]
}