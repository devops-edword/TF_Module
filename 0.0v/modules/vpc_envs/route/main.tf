resource "aws_route" "rtb_pri01-route-natgw" {
  route_table_id         = var.rtb-pri-id
  destination_cidr_block = var.any-cidr


  nat_gateway_id         = var.natgw-id
  gateway_id     = var.igw-id
}