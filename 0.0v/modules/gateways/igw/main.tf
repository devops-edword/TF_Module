resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc-id

  tags = {
    Name = var.igw-name
  }
}


resource "aws_internet_gateway_attachment" "igw_attach" {
  internet_gateway_id = aws_internet_gateway.igw.id
  vpc_id = var.vpc-id
}