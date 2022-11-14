variable "instance_type" {
  type        = string
  description = "EC2 instance type"
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
  validation {
    condition     = length(var.tags-name) > 12
    error_message = "Must be a 12 character instance name"
  }
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
}

variable "tags-owner" {
  type        = string
  description = "The owner of the VM"
}