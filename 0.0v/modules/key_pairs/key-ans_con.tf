# Create Key-Pair "cloud-vpc01-ans_con-key"
resource "tls_private_key" "key-ans_con" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key-pair-ans_con" {
  key_name   = var.ans_con-key-name
  public_key = tls_private_key.key-ans_con.public_key_openssh
}

resource "local_file" "ans_con-key-pem" {
  content  = tls_private_key.key-ans_con.private_key_pem
  filename = var.ans_con-key-file-name

  file_permission = "0400"
}