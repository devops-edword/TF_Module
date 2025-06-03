## Variable :: [EC2 Instance]
variable "ami-id" {
  type = string

  default = ""
}





variable "key-id" {
  type = string

  default = ""
}





variable "sub-id" {
  type = string

  default = ""
}





variable "sg-id" {
  type = string

  default = ""
}





# var.instance-type
variable "instance-type" {
  type = string

  default = "t2.micro"
}


# var.instance-bastion-name
variable "instance-name" {
  type    = string

  default = ""
}


variable "user-data" {
  description = "The user data to provide when launching the instance."
  type        = string
  default     = null
}