resource "aws_security_group" "webserver_sg" {
  name = "webser-sg"
  ingress {
    from_port   = var.nginx_port
    to_port     = var.nginx_port
    protocol    = "tcp"
    cidr_blocks = [var.my_public_ip]
  }
  # ingress {
  #   from_port   = var.ssh_port
  #   to_port     = var.ssh_port
  #   protocol    = "tcp"
  #   cidr_blocks = [var.my_public_ip]
  # }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
