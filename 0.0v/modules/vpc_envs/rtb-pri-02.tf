resource "aws_route_table" "rtb-pri-02" {
  vpc_id = local.vpc-id


  tags = {
    Name = var.rtb-pri02-name
  }
}