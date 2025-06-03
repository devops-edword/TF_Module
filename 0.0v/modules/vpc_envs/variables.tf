### Variables
# CIDR
variable "any-cidr" {
  type    = string
  default = "0.0.0.0/0"
}





variable "natgw01-id" {
  type = string
  default = ""
}





variable "natgw02-id" {
  type = string
  default = ""
}





### = Resource Block Variable =
## Variable :: [VPC]
# var.vpc-name
variable "vpc-name" {
  type    = string
  default = "cloud-vpc01"
}

# var.vpc-cidr-block
variable "vpc-cidr-block" {
  type    = string
  default = "172.20.0.0/16"
}





## Variable :: [SUBNET]
# var.subnet-pub01-name
variable "sub-pub01-name" {
  type    = string
  default = "cloud-vpc01-public-sn01a"
}

# var.subnet-pub01-cidr
variable "sub-pub01-cidr" {
  type    = string
  default = "172.20.0.0/24"
}


# var.subnet-pub02-name
variable "sub-pub02-name" {
  type    = string
  default = "cloud-vpc01-public-sn02c"
}

# var.subnet-pub02-cidr
variable "sub-pub02-cidr" {
  type    = string
  default = "172.20.1.0/24"
}


# var.subnet-pri01-name
variable "sub-pri01-name" {
  type    = string
  default = "cloud-vpc01-private-sn01a"
}

# var.subnet-pri01-cidr
variable "sub-pri01-cidr" {
  type    = string
  default = "172.20.32.0/24"
}


# var.subnet-pri02-name
variable "sub-pri02-name" {
  type    = string
  default = "cloud-vpc01-private-sn02c"
}

# var.subnet-pri02-cidr
variable "sub-pri02-cidr" {
  type    = string
  default = "172.20.33.0/24"
}





## Variable :: [R.T.B]
# var.pub-rtb-name
variable "rtb-pub-name" {
  type    = string
  default = "cloud-vpc01-public-rtb"
}


# var.pri-rtb01-name
variable "rtb-pri01-name" {
  type    = string
  default = "cloud-vpc01-private-rtb01"
}

# var.pri-rtb02-name
variable "rtb-pri02-name" {
  type    = string
  default = "cloud-vpc01-private-rtb02"
}










### Locals
locals {
  vpc-id = aws_vpc.vpc.id


  vpc-az-01 = data.aws_availability_zones.az.names[0]
  vpc-az-03 = data.aws_availability_zones.az.names[2]


  sub-pub01-id = aws_subnet.sub-pub-01.id
  sub-pub02-id = aws_subnet.sub-pub-02.id

  sub-pri01-id = aws_subnet.sub-pri-01.id
  sub-pri02-id = aws_subnet.sub-pri-02.id


  rtb-pub-id = aws_route_table.rtb-pub.id

  rtb-pri01-id = aws_route_table.rtb-pri-01.id
  rtb-pri02-id = aws_route_table.rtb-pri-02.id
}