provider "aws"{
  region = "us-east-2"
}

resource "aws_default_vpc" "default"{}


resource "aws_security_group" "pipeline_sg"{
  name = "TCP_SSH"
  description = "allows both tcp and ssh"
  vpc_id = aws_default_vpc.default.id

  ingress {
    description = "allows ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress{
    description = "allows tcp"
    from_port = 80
    to_port = 80
    protocol ="tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
    from_port = 0
    to_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Env ="Dev"
  }
}
