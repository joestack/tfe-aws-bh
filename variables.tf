variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "owner" {
  description = "Owner of this deployment"
}

variable "name" {
  description = "Name of this deployment"
}

variable "ttl" {
  description = "Time to live before destroyed"
}
variable "web_node_count" {
  description = "number of worker nodes"
  default     = "1"
}

variable "ssh_user" {
  description = "default ssh user to get access to an instance"
  default     = "ubuntu"
}

variable "instance_type" {
  description = "instance size to be used for worker nodes"
  default     = "t2.small"
}

variable "web_subnet_count" {
  description = "number of subnets to be used for working nodes"
  default     = "2"
}

variable "key_name" {
  description = "the public key to be used to access the bastin host"
  default     = "joern"
}

variable "pub_key" {
  description = "the public key to be used to access the ansible nodes"
  default     = "joestack"
}

variable "id_rsa_aws" {
  description = "the private ssh key used by the bastion host to get access to the ansible nodes"
}

variable "dns_domain" {
  description = "DNS domain suffix"
  default     = "joestack.xyz"
}

variable "network_address_space" {
  description = "CIDR for this deployment"
  default     = "192.168.0.0/16"
}

locals {
  mod_az = length(
    split(",", join(", ", data.aws_availability_zones.available.names)),
  )
}


