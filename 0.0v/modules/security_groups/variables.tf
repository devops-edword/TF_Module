variable "vpc-id" {
  type = string
  default = ""
}





# CIDR
variable "any-cidr" {
  type    = string
  default = "0.0.0.0/0"
}





# var.sg-bastion-name
variable "sg-bastion-name" {
  type    = string
  default = "cloud-vpc01-sg-bastion"
}


# var.sg-ans_con-name
variable "sg-ans_con-name" {
  type    = string
  default = "cloud-vpc01-sg-ans_con"
}


# var.sg-clb-name
variable "sg-clb-name" {
  type    = string
  default = "cloud-vpc01-sg-clb"
}


# var.sg-web-name
variable "sg-web-name" {
  type    = string
  default = "cloud-vpc01-sg-pub-web"
}


# var.sg-db-name
variable "sg-db-name" {
  type    = string
  default = "cloud-vpc01-sg-db"
}





# Locals
locals {
  sg-bastion-id = aws_security_group.sg-bastion.id

  sg-ans_con-id = aws_security_group.sg-ans_con.id

  sg-web-id = aws_security_group.sg-web.id

  sg-db-id = aws_security_group.sg-db.id

  sg-clb-id = aws_security_group.sg-clb.id
}