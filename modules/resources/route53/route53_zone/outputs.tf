output "arn" {
    description = "The Amazon Resource Name (ARN) of the Hosted Zone"
    value       = aws_route53_zone.r53_zone.arn
}

output "primary_name_server" {
    description = "The Route 53 name server that created the SOA record"
    value       = aws_route53_zone.r53_zone.primary_name_server
}

output "name_servers" {
    description = "A list of name servers in associated (or default) delegation set"
    value       = aws_route53_zone.r53_zone.name_servers
}

output "zone_id" {
    description = "The Hosted Zone ID. This can be referenced by zone records."
    value       = aws_route53_zone.r53_zone.zone_id
}