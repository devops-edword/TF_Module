resource "aws_instance" "instance" {
  ami                         = var.ami-id
  instance_type               = var.instance-type
  key_name                    = var.key-id
  subnet_id                   = var.sub-id
  associate_public_ip_address = true

  vpc_security_group_ids = [
    var.sg-id
  ]

  user_data = var.user-data

  tags = {
    Name = var.instance-name
  }
}