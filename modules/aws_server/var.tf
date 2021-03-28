variable "ami" {
  description = "Instance AMI ID"
  type        = string
  default     = "ami-0b3d7a5ecc2daba4c"
}

variable "instance_size" {
  description = "Instance Size"
  type        = string
  default     = "t3a.micro"
}

variable "root_disksize" {
  description = "root Disk Size"
  type        = string
  default     = "20"
}
