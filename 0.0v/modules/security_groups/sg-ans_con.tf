resource "aws_security_group" "sg-ans_con" {
  vpc_id      = var.vpc-id
  name        = var.sg-ans_con-name
  description = "Security Group For ans_con"


  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = [var.any-cidr]
  }

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [local.sg-bastion-id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.any-cidr]
  }

  tags = {
    Name = var.sg-ans_con-name
  }
}