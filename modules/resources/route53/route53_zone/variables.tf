# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
    description = "This is the name of the hosted zone"
    type        = string
}

variable "comment" {
    description = "A comment for the hosted zone"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_id" {
    description = "ID of the VPC to associate"
    type        = string
    default     = null
}