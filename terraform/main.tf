terraform {
  required_version = ">= 1.1.4"
  backend "s3" {
    bucket = "aws-imaiida-terraform-state"
    region = "us-east-1"
    key = "terraform.tfstate"
#    encrypt = true
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "aws-imaiida-terraform-state"
  versioning {
    enabled = false
  }
}

resource "aws_instance" "MyWebserver" {
  count                  = 3
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  tags = {
    Name = "My-Webserver-${count.index}"
  }
  key_name = var.key-store-name

}
