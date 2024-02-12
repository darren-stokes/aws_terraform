# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_id" {
    description = "The ID of the VPC whose main route table should be set"
    type        = string
}

variable "route_table_id" {
    description = "The ID of the Route Table to set as the new main route table for the target VPC"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------
