resource "aws_route_table" "table" {
    vpc_id = var.vpc_id

    tags = {
      Name = var.name
    }
}