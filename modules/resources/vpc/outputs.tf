output "arn" {
    description = "Amazon Resource Name (ARN) of VPC"
    value       = aws_vpc.vpc.arn
}

output "id" {
    description = "The ID of the VPC"
    value       = aws_vpc.vpc.id
}

output "main_route_table_id" {
    description = "The ID of the main route table associated with this VPC"
    value       = aws_vpc.vpc.main_route_table_id
}