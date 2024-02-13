resource "aws_security_group" "sg" {
  vpc_id = var.vpc_id
  
  tags = {
    Name = var.name
  } 
}