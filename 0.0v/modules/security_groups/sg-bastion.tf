resource "aws_security_group" "sg-bastion" {
  vpc_id      = var.vpc-id
  name        = var.sg-bastion-name
  description = "Security Group for bastion"


  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = [var.any-cidr]
  }

  ingress {
    from_port   = 22
    to_port     = 22
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
    Name = var.sg-bastion-name
  }
}