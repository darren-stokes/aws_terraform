locals {
  workspace = terraform.workspace

  # Dynamically format the required variables
  vpc_name    = format("%s-vpc", local.workspace)
  subnet_name = format("%s-subnet", local.workspace)
}

terraform {
  backend "s3" {
  }
}

provider "aws" {
    region = var.aws_region[local.workspace]
}

module "vpc" {
  source = "../../modules/resources/vpc"
  
  name       = local.vpc_name
  cidr_block = var.vpc_cidr_block[local.workspace]
}

module "subnet" {
  source = "../../modules/resources/subnet"
  
  name       = local.subnet_name
  vpc_id     = module.vpc.id
  cidr_block = var.subnet_cidr_block[local.workspace]
}