resource "aws_vpc_security_group_egress_rule" "sg_egress" {
    security_group_id = var.security_group_id
    description       = var.description
    ip_protocol       = var.ip_protocol
    from_port         = var.from_port
    to_port           = var.to_port
    cidr_ipv4         = var.cidr_ipv4

    tags = {
        Name = var.name
    }
}