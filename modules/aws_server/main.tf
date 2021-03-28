provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "server" {
  ami           = var.ami
  instance_type = var.instance_size

  root_block_device {
    volume_size = var.root_disksize
    voluem_type = "st1"
    encrypted   = true
  }

  subnet_id = data.
  volume_tags = {
    Name = ""
  }
  tags = {
    Name = ""
  }
}
