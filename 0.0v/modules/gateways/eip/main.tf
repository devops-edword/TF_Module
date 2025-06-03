resource "aws_eip" "eip-natgw" {

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = var.eip-name
  }
}