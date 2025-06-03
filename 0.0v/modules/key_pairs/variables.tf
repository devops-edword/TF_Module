## Variable :: [KEY PAIR]
# var.bastion-key-name
variable "bastion-key-name" {
  type    = string
  default = "cloud-vpc01-bastion-key"
}

# var.bastion-key-file-name
variable "bastion-key-file-name" {
  type    = string
  default = "Key_Pair_files/cloud-vpc01-bastion-key.pem"
}


# var.web-key-name
variable "web-key-name" {
  type    = string
  default = "cloud-vpc01-web-key"
}

# var.web-key-file-name
variable "web-key-file-name" {
  type    = string
  default = "Key_Pair_files/cloud-vpc01-web-key.pem"
}


# var.db-key-name
variable "db-key-name" {
  type    = string
  default = "cloud-vpc01-db-key"
}

# var.db-key-file-name
variable "db-key-file-name" {
  type    = string
  default = "Key_Pair_files/cloud-vpc01-db-key.pem"
}


# var.ans_control-key-name
variable "ans_con-key-name" {
  type    = string
  default = "cloud-vpc01-ans_con-key"
}

# var.ans_control-key-file-name
variable "ans_con-key-file-name" {
  type    = string
  default = "Key_Pair_files/cloud-vpc01-ans_con-key.pem"
}