provider "aws" {
  region = "ap-southeast-2"
}

module "prod_vpc" {
  source                  = "../modules/aws_network"
  env                     = var.env
  vpc_cidr                = var.vpc_cidr
  public_subnets          = var.public_subnets
  private_backend_subnets = var.private_backend_subnets
  private_db_subnets      = var.private_db_subnets
}

module "backend_server" {
  source        = "../modules/aws_server"
  env           = "prod"
  name          = "backend-01"
  subnet_id     = module.prod_vpc.private_backend_subnet_ids[var.private_backend_subnets["ap-southeast-2a"]]
  root_disksize = "20"
  depends_on    = [module.prod_vpc]
}
