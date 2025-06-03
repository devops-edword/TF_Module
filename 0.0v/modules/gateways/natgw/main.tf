resource "aws_nat_gateway" "natgw" {
  allocation_id = var.eip-id
  subnet_id     = var.sub-pri-id

  tags = {
    Name = var.natgw-name
  }
}





resource "aws_route" "rtb_pri01-route-natgw01" {
  route_table_id         = var.rtb-pri01-id
  destination_cidr_block = var.any-cidr
  nat_gateway_id         = local.natgw-id
}


resource "aws_route" "rtb_pri01-route-natgw02" {
  route_table_id         = var.rtb-pri02-id
  destination_cidr_block = var.any-cidr
  nat_gateway_id         = local.natgw-id
}