variable "project" {}
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
  project       = var.project
  cidr_block    = var.cidr_block
  dns_hostnames = var.dns_hostnames
  dns_support   = var.dns_support
}