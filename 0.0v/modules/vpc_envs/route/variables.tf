variable "rtb-id" {
  type = string
  default = ""
}


variable "any-cidr" {
  type = string
  default = "0.0.0.0/0"
}


variable "igw-id" {
  type = string
  default = null
}


variable "natgw-id" {
  type = string
  default = null
}