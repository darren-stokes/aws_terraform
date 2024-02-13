output "arn" {
    description = "The Amazon Resource Name (ARN) of the security group rule"
    value       = aws_vpc_security_group_ingress_rule.sg_ingress.arn
}

output "security_group_rule_id" {
    description = "The ID of the security group rule"
    value       = aws_vpc_security_group_ingress_rule.sg_ingress.security_group_rule_id
}