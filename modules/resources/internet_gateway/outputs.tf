output "arn" {
    description = "The ARN of the Internet Gateway"
    value = aws_internet_gateway.igw.id
}

output "id" {
    description = "The ID of the Internet Gateway"
    value       = aws_internet_gateway.igw.id
}