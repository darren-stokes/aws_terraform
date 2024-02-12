resource "aws_route53_zone" "r53_zone" {
    name    = var.name
    comment = var.comment

    dynamic "vpc" {
        for_each = var.vpc_id != null ? [1] : []

        content {
            vpc_id = var.vpc_id
        }
    }
}