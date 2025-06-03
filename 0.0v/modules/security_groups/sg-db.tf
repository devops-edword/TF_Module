resource "aws_security_group" "sg-db" {
  vpc_id      = var.vpc-id
  name        = var.sg-db-name
  description = "Security Group for db"


  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [local.sg-web-id, local.sg-ans_con-id]
  }

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [local.sg-web-id, local.sg-ans_con-id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.any-cidr]
  }

  tags = {
    Name = var.sg-db-name
  }
}