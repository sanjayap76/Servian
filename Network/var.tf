variable "env" {
  default = "prod"
}

variable "vpc_cidr" {
  default = "10.1.0.0/16"
}

variable "public_subnet_cidrs" {
  type = "map"
  default = [
    ap-southeast-2a = "10.1.0.0/24",
    ap-southeast-2b = "10.1.128.0/24",
  ]
}

variable "private_backend_subnet_cidrs" {
  type = "map"
  default = [
    ap-southeast-2a = "10.1.32.0/24",
    ap-southeast-2b = "10.1.160.0/24",
  ]
}

variable "private_db_subnet_cidrs" {
  default = [
    "10.1.64.0/24",
    "10.1.192.0/24",
  ]
}
