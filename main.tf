terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ubuntu" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  availability_zone           = "${var.aws_region}b"
  associate_public_ip_address = "true"
  subnet_id                   = var.subnet_ids[0]
  tags = {
    Name  = var.name
    owner = var.owner
    ttl   = "24"
  }
}

