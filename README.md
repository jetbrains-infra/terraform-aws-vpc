## About
Terraform module to create empty VPC.

## Usage

Minimal setup:
```
module "vpc" {
  source  = "github.com/jetbrains-infra/terraform-aws-vpc"
  project = "ProjectName" // required
}
```

All options with default values:
```
module "vpc" {
  source        = "github.com/jetbrains-infra/terraform-aws-vpc"
  project       = "ProjectName" // required
  cidr_block    = "10.0.0.0/22"
  dns_support   = true
  dns_hostnames = true     
}
```

## Outputs

* `id` - vpc id 
* `default_route_table_id` - ID of VPC default route table
* `default_security_group_id` - ID of VPC default security group 
