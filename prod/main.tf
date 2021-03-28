provider "aws" {
  region = "ap-southeast-2"
}

module "prod_vpc" {
  source   = "../modules/aws_network"
  env      = "prod"
  vpc_cidr = "10.2.0.0/16"
  public_subnets = {
    ap-southeast-2a = "10.2.0.0/24",
    ap-southeast-2b = "10.2.128.0/24"
  }
  private_backend_subnets = {
    ap-southeast-2a = "10.1.32.0/24",
    ap-southeast-2b = "10.1.160.0/24"
  }
  private_db_subnets = {
    ap-southeast-2a = "10.1.64.0/24",
    ap-southeast-2b = "10.1.192.0/24"
  }
}
