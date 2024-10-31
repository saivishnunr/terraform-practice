provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web01" {
  ami = "ami-066784287e358dad1"
  instance_type = "t2.micro"
}

output "ip_addr" {
  value = aws_instance.web01.public_ip
}
