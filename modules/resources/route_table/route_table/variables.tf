# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_id" {
    description = "The VPC ID"
    type        = string
}

variable "name" {
    description = "The human readable name to add to the tag, visible via the AWS console"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------

variable "cidr_block" {
    description = "The CIDR block of the route"
    type        = string
    default     = null
}

variable "gateway_id" {
    description = "Identifier of a VPC internet gateway, virtual private gateway, or local. local routes cannot be created but can be adopted or imported"
    type        = string
    default     = null
}

variable "nat_gateway_id" {
    description = "Identifier of a VPC NAT gateway"
    type        = string
    default     = null
}

variable "vpc_peering_connection_id" {
    description = "Identifier of a VPC peering connection"
    type        = string
    default     = null
}