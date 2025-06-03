resource "aws_security_group" "sg-web" {
  vpc_id      = var.vpc-id
  name        = var.sg-web-name
  description = "Security Group for web"


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
    security_groups = [local.sg-bastion-id, local.sg-ans_con-id]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [local.sg-clb-id]
  }

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [local.sg-clb-id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.any-cidr]
  }

  tags = {
    Name = var.sg-web-name
  }
}