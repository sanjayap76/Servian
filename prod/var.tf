variable "env" {
  type    = string
  default = "prod"
}

variable "vpc_cidr" {
  type    = string
  default = "10.2.0.0/16"
}

variable "public_subnets" {
  type = map(any)
  default = {
    ap-southeast-2a = "10.2.0.0/24",
    ap-southeast-2b = "10.2.128.0/24"
  }
}

variable "private_backend_subnets" {
  type = map(any)
  default = {
    ap-southeast-2a = "10.2.32.0/24",
    ap-southeast-2b = "10.2.160.0/24"
  }
}

variable "private_db_subnets" {
  type = map(any)
  default = {
    ap-southeast-2a = "10.2.64.0/24",
    ap-southeast-2b = "10.2.192.0/24"
  }
}
