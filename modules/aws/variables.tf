variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}
variable "key_name" {
  type        = string
  description = "The name of the Key Pair"
}
variable "vpc_security_group_ids" {
  type        = list(string)
  description = "The description of the VM"
}

variable "subnet_id" {
  type        = string
  description = "The description of the VM"
}

variable "tags-name" {
  type        = string
  description = "The name of the VM"
}

variable "tags-descr" {
  type        = string
  description = "The description of the VM"
}

variable "ami" {
  type        = string
  description = "The description of the VM"
}

variable "tags-env" {
  type        = string
  description = "The environment of the VM"
  validation {
    condition     = contains(["DEV", "ST", "RT", "PROD"], var.environment)
    error_message = "Invalid environment passed. Valid environments are: (DEV, ST, RT, PROD)."
  }
}

variable "tags-owner" {
  type        = string
  description = "The owner of the VM"
}