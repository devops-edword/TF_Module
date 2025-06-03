resource "aws_route_table_association" "rtb_pub-asso-sub_pub01" {
  subnet_id      = local.sub-pub01-id
  route_table_id = local.rtb-pub-id
}

resource "aws_route_table_association" "rtb_pub-asso-sub_pub02" {
  subnet_id      = local.sub-pub02-id
  route_table_id = local.rtb-pub-id
}


resource "aws_route_table_association" "rtb_pri01-asso-sub_pri01" {
  subnet_id      = local.sub-pri01-id
  route_table_id = local.rtb-pri01-id
}

resource "aws_route_table_association" "rtb_pri02-asso-sub_pri02" {
  subnet_id      = local.sub-pri02-id
  route_table_id = local.rtb-pri02-id
}