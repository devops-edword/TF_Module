resource "aws_route_table" "rtb-pri-01" {
  vpc_id = local.vpc-id


  tags = {
    Name = var.rtb-pri01-name
  }
}