# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "route_table_id" {
    description = "value"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------
variable "gateway_id" {
    description = "The gateway ID to create an association. Conflicts with subnet_id."
    type        = string
    default     = null
}

variable "subnet_id" {
    description = "The subnet ID to create an association. Conflicts with gateway_id."
    type        = string
    default     = null
}
