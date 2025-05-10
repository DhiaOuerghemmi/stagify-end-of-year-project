# Terraform Network Module

## Description
Creates a VPC with public subnets, an Internet Gateway, and necessary route tables.

## Usage

```hcl
module "network" {
  source               = "../modules/network"
  name_prefix          = "stagify"
  vpc_cidr             = "10.0.0.0/16"           # ✏️ Change as needed
  availability_zones   = ["us-east-1a","us-east-1b","us-east-1c"]
  public_subnet_cidrs  = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
  common_tags          = { Environment = var.environment }
}
