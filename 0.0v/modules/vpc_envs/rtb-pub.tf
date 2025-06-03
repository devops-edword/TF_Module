resource "aws_route_table" "rtb-pub" {
  vpc_id = local.vpc-id


  tags = {
    Name = var.rtb-pub-name
  }
}