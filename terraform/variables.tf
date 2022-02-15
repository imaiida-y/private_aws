variable "region" {
  default = "us-east-1"
}
variable "nginx_port" {
  default = "80"
}
variable "key-store-name" {
  default = "aws-imaiida-key-east1"
}
variable "ssh_port" {
  default = "22"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "my_public_ip" {
  default = "98.207.180.245/32"
}
variable "ami" {
  default = "ami-0be2609ba883822ec" # Aamazon Linux 2
}

variable "az-group" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}
