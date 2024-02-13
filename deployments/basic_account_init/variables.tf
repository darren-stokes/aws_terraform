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
    type        = map(set(string))
}

variable "r53_details" {
    description = "Details for the Route53 configuration"
    type = map(object({
        name    = string
        comment = string
    }))
}

variable "sg_ingress_config" {
    description = "Details for Security Groups Ingress rules"
    type = map(object({
        description = string,
        ip_protocol = string,
        cidr_ipv4   = string,
        from_port   = string,
        to_port     = string
    }))
}

variable "sg_egress_config" {
    description = "Details for Security Groups Egress rules"
    type = map(object({
        description = string,
        ip_protocol = string,
        cidr_ipv4   = string
    }))
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set.
# ---------------------------------------------------------------------------------------------------------------------
