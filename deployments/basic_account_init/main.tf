locals {
  workspace = terraform.workspace

  # Dynamically format the required variables
  vpc_name         = format("%s-vpc", local.workspace)
  subnet_name      = format("%s-subnet", local.workspace)
  igw_name         = format("%s-igw", local.workspace)
  route_table_name = format("%s-route-table", local.workspace)
  sg_name          = format("%s-security-group", local.workspace)
  sg_ingress_name  = format("%s-ingress-security", local.workspace)
  sg_egress_name   = format("%s-egress-security", local.workspace)
}

# Info given by a file specified at init time, e.g. terraform init -backend-config=backend_configs/dev-eu-w1.tfbackend -reconfigure
terraform {
  backend "s3" {
  }
}

provider "aws" {
    region = var.aws_region[local.workspace]
}

#### Networking
module "vpc" {
  source = "../../modules/resources/vpc"
  
  name       = local.vpc_name
  cidr_block = var.vpc_cidr_block[local.workspace]
}

module "subnet" {
  source   = "../../modules/resources/subnet"
  for_each = var.subnet_cidr_block[local.workspace]

  name       = local.subnet_name
  vpc_id     = module.vpc.id
  cidr_block = each.value
}

module "igw" {
  source = "../../modules/resources/internet_gateway"

  vpc_id = module.vpc.id
  name   = local.igw_name
}

module "route_table" {
  source = "../../modules/resources/route_table/route_table"

  vpc_id     = module.vpc.id
  name       = local.route_table_name
}

module "route" {
  source = "../../modules/resources/route_table/route"

  route_table_id         = module.route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = module.igw.id
}

#### Security Group
module "security_group" {
  source = "../../modules/resources/security_groups/security_group"
  
  name   = local.sg_name
  vpc_id = module.vpc.id
}

module "security_group_ingress" {
  source = "../../modules/resources/security_groups/vpc_security_group_ingress_rule"
  
  name              = local.sg_ingress_name
  security_group_id = module.security_group.id
  description       = var.sg_ingress_config[local.workspace].description
  ip_protocol       = var.sg_ingress_config[local.workspace].ip_protocol
  cidr_ipv4         = var.sg_ingress_config[local.workspace].cidr_ipv4
  from_port         = var.sg_ingress_config[local.workspace].from_port
  to_port           = var.sg_ingress_config[local.workspace].to_port
}

module "security_group_egress" {
  source = "../../modules/resources/security_groups/vpc_security_group_egress_rule"
  
  name              = local.sg_egress_name
  security_group_id = module.security_group.id
  description       = var.sg_egress_config[local.workspace].description
  ip_protocol       = var.sg_egress_config[local.workspace].ip_protocol
  cidr_ipv4         = var.sg_egress_config[local.workspace].cidr_ipv4
}

#### DNS/Route 53
module "route53_private" {
  source = "../../modules/resources/route53/route53_zone"

  name    = var.r53_details[local.workspace].name
  comment = var.r53_details[local.workspace].comment
  vpc_id  = module.vpc.id
}

#### S3

#### RDS

#### CloudFront

#### CloudWatch - monitoring & logs