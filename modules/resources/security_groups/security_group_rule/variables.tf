# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# These variables are expected to be passed in by the calling module
# ---------------------------------------------------------------------------------------------------------------------

variable "type" {
    description = "Type of rule being created. Valid options are ingress (inbound) or egress (outbound)"
    type        = string
}

variable "from_port" {
    description = "Start port (or ICMP type number if protocol is \"icmp\" or \"icmpv6\")"
    type        = number
}

variable "to_port" {
    description = "End port (or ICMP code if protocol is \"icmp\")."
    type        = number
}

variable "protocol" {
    description = "Protocol. If not icmp, icmpv6, tcp, udp, or all use the protocol number"
    type        = string
}

variable "description" {
    description = "Description of the rule"
    type        = string
}

variable "security_group_id" {
    description = "Security group to apply this rule to"
    type        = string
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# Generally, these values won't need to be changed as they have defaults set but can be overwritten from the calling module.
# ---------------------------------------------------------------------------------------------------------------------
