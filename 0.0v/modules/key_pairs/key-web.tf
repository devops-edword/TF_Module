# Create Key-Pair "web-key"
resource "tls_private_key" "key-web" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key-pair-web" {
  key_name   = var.web-key-name
  public_key = tls_private_key.key-web.public_key_openssh
}

resource "local_file" "web-key-pem" {
  content  = tls_private_key.key-web.private_key_pem
  filename = var.web-key-file-name

  file_permission = "0400"
}