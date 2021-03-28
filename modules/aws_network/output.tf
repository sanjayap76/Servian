output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "public_subnet_ids" {
  value = {
    for az in aws_subnet.public_subnets :
    az.cidr_block => az.id
  }
}

output "private_backend_subnet_ids" {
  value = {
    for az in aws_subnet.private_backend_subnets :
    az.cidr_block => az.id
  }
}

output "private_db_subnet_ids" {
  value = {
    for az in aws_subnet.private_db_subnets :
    az.cidr_block => az.id
  }
}
