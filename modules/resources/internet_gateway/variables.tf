# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_id" {
    description = "The VPC ID to create in"
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
