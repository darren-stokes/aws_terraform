# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "security_group_id"{
    description = "The ID of the security group"
    type        = string
}

variable "description" {
    description = "The security group rule description"
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

variable "ip_protocol" {
    description = "The IP protocol name or number. Use -1 to specify all protocols. Note that if ip_protocol is set to -1, it translates to all protocols, all port ranges, and from_port and to_port values should not be defined."
    type        = string
    default     = null
}

variable "from_port" {
    description = "The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type."
    type        = string
    default     = null
}

variable "to_port" {
    description = "The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code."
    type        = string
    default     = null
}

variable "cidr_ipv4"{
    description = "The source IPv4 CIDR range"
    type        = string
    default     = null
}