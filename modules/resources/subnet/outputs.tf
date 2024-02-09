output "arn" {
    description = "The ARN of the subnet"
    value       = aws_subnet.subnet.arn
}

output "id" {
    description = "The ID of the subnet"
    value       = aws_subnet.subnet.id
}