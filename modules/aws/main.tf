provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id        = var.subnet_id
  user_data              = file("${var.user_data}")
  key_name = var.key_name
  tags = {
    Name        = lower(var.tags-name)
    Description = var.tags-descr
    Environment = var.tags-env
    Owner       = var.tags-owner
  }
}
