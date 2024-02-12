resource "aws_route_table_association" "rta" {
    gateway_id     = var.gateway_id
    subnet_id      = var.subnet_id
    route_table_id = var.route_table_id
}