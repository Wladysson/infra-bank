module "routing" {
  source = "../../../modules/aws/route-tables"

  vpc_id = module.vpc.vpc_id
}