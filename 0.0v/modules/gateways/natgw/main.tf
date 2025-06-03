resource "aws_nat_gateway" "natgw" {
  allocation_id = var.eip-id
  subnet_id     = var.sub-pri-id

  tags = {
    Name = var.natgw-name
  }
}