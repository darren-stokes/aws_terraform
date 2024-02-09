# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the terraform.tfvars file
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_region" {
    description = "The AWS region to deploy the infra to"
    type        = map(string)
}

variable "vpc_cidr_block" {
    description = "The IPv4 CIDR block for the VPC"
    type        = map(string)
}

variable "subnet_cidr_block" {
    description = "The IPv4 CIDR block for the subnet"
    type        = map(string)
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set.
# ---------------------------------------------------------------------------------------------------------------------
