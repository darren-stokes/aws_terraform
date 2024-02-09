# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the terraform.tfvars file
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
    description = "The human readable name to add to the tag, visible via the AWS console"
    type        = string
}

variable "cidr_block" {
    description = "The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------
