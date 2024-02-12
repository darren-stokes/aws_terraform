output "arn" {
    description = "The ARN of the route table"
    value = aws_route_table.table.arn
}

output "id" {
    description = "The ID of the routing table"
    value       = aws_route_table.table.id
}