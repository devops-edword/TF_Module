# Create Key-Pair "db-key"
resource "tls_private_key" "key-db" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key-pair-db" {
  key_name   = var.db-key-name
  public_key = tls_private_key.key-db.public_key_openssh
}

resource "local_file" "db-key-pem" {
  content  = tls_private_key.key-db.private_key_pem
  filename = var.db-key-file-name

  file_permission = "0400"
}