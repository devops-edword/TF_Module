# Create Key-Pair "bastion-key"
resource "tls_private_key" "key-bastion" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key-pair-bastion" {
  key_name   = var.bastion-key-name
  public_key = tls_private_key.key-bastion.public_key_openssh
}

resource "local_file" "key-pem-bastion" {
  content  = tls_private_key.key-bastion.private_key_pem
  filename = var.bastion-key-file-name

  file_permission = "0400"
}