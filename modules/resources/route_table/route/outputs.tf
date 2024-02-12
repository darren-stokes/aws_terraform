output "id" {
    description = "Route identifier computed from the routing table identifier and route destination"
    value = aws_route.route.id 
}

output "state" {
    description = "value"
    value = aws_route.route.state
}