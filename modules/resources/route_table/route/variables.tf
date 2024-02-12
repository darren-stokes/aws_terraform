# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "route_table_id" {
    description = "The ID of the routing table"
    type        = string
}

variable "destination_cidr_block" {
    description = "The destination CIDR block"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_peering_connection_id" {
    description = "Identifier of a VPC peering connection"
    type        = string
    default     = null
}

variable "gateway_id" {
    description = "Identifier of a VPC internet gateway or a virtual private gateway"
    type        = string
    default     = null
}

variable "nat_gateway_id" {
    description = "Identifier of a VPC NAT gateway"
    type        = string
    default     = null
}