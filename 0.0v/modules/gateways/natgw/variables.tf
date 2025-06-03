## Variable :: [N.A.T Gateway]
variable "any-cidr" {
  type = string


  default = "0.0.0.0/0"
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