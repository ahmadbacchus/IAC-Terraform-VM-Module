terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}


module "MY-VM-MODULE" {
    source = "./modules/aws"

    instance_type          = var.instance_type
    key_name               = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id = var.subnet_id
    ami                    = var.ami
    tags-name              = var.tags-name
    tags-descr             = var.tags-descr
    tags-env               = var.tags-env
    tags-owner             = var.tags-owner
}