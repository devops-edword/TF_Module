resource "aws_route" "rtb_pri01-route-natgw01" {
  route_table_id         = local.rtb-pri01-id
  destination_cidr_block = var.any-cidr
  nat_gateway_id         = var.natgw01-id
}


resource "aws_route" "rtb_pri01-route-natgw02" {
  route_table_id         = local.rtb-pri02-id
  destination_cidr_block = var.any-cidr
  nat_gateway_id         = var.natgw02-id
}