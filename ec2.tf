provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web02" {
  ami = "ami-066784287e358dad1"
  instance_type = "t2.micro"
}

output "ip_addr" {
  value = aws_instance.web02.public_ip
}

output "private_ip_addr" {
  value = aws_instance.web02.private_ip
}
