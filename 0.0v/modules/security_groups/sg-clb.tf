resource "aws_security_group" "sg-clb" {
  vpc_id      = var.vpc-id
  name        = var.sg-clb-name
  description = "Security Group for clb"


  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.any-cidr]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.any-cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.any-cidr]
  }

  tags = {
    Name = var.sg-clb-name
  }
}