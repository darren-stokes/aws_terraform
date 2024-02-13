output "arn" {
    description = "ARN of the security group"
    value       = aws_security_group.sg.arn
}

output "id" {
    description = "ID of the security group"
    value       = aws_security_group.sg.id
}