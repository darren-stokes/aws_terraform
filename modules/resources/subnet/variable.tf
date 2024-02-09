# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the terraform.tfvars file
# ---------------------------------------------------------------------------------------------------------------------
variable "vpc_id" {
    description = "The VPC ID to place the subnet on"
    type        = string
}

variable "cidr_block" {
    description = "The IPv4 CIDR block for the subnet"
    type        = string
}

variable "name" {
    description = "The human readable name to give the subnet"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------
