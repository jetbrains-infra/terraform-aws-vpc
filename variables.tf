variable "name" {
  description = "VPC name."
}
variable "tags" {
  description = "Tags."
  type        = map(string)
}
variable "dns_hostnames" {
  default = true
}
variable "dns_support" {
  default = true
}
variable "cidr_block" {
  default = "10.0.0.0/22"
}

locals {
  cidr_block    = var.cidr_block
  dns_hostnames = var.dns_hostnames
  dns_support   = var.dns_support
  tags = merge({
    Name   = var.name,
    Module = "VPC"
    ModuleSource    = "https://github.com/jetbrains-infra/terraform-aws-vpc/"
  }, var.tags)
}