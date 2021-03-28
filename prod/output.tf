output "vpc_id" {
  value = module.prod_vpc.vpc_id
}

output "vpc_cidr" {
  value = module.prod_vpc.vpc_cidr
}

output "public_subnet_ids" {
  value = module.prod_vpc.public_subnet_ids
}

output "private_backend_subnet_ids" {
  value = module.prod_vpc.private_backend_subnet_ids
}

output "private_db_subnet_ids" {
  value = module.prod_vpc.private_db_subnet_ids
}
