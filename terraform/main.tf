resource "aws_instance" "MyWebserver" {
  count                  = 1
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.webserver_sg.id}"]
  tags = {
    Name = "My-Webserver-${count.index}"
  }
  key_name = var.key-store-name

}
