## Variable :: [N.A.T Gateway]
variable "any-cidr" {
  type = string


  default = "0.0.0.0/0"
}





variable "rtb-pri-id" {
  type = string


  default = ""
}





variable "eip-id" {
  type = string


  default = ""
}





variable "sub-pri-id" {
  type = string


  default = ""
}





variable "natgw-name" {
  type    = string
  default = ""
}





### Locals
locals {
  natgw-id = aws_nat_gateway.natgw.id
}