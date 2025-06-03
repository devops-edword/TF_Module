resource "aws_subnet" "sub-pub-01" {
  vpc_id     = local.vpc-id
  cidr_block = var.sub-pub01-cidr

  availability_zone = local.vpc-az-01

  tags = {
    Name = var.sub-pub01-name
  }
}


resource "aws_subnet" "sub-pub-02" {
  vpc_id     = local.vpc-id
  cidr_block = var.sub-pub02-cidr

  availability_zone = local.vpc-az-03

  tags = {
    Name = var.sub-pub02-name
  }
}




resource "aws_subnet" "sub-pri-01" {
  vpc_id     = local.vpc-id
  cidr_block = var.sub-pri01-cidr

  availability_zone = local.vpc-az-01

  tags = {
    Name = var.sub-pri01-name
  }
}


resource "aws_subnet" "sub-pri-02" {
  vpc_id     = local.vpc-id
  cidr_block = var.sub-pri02-cidr

  availability_zone = local.vpc-az-03

  tags = {
    Name = var.sub-pri02-name
  }
}