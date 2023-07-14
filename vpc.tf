# main.tf

# provider "aws" {
#   region = "us-west-2"  # Replace with your desired AWS region
# }

resource "aws_vpc" "netflix_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.netflix_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"
}

resource "aws_security_group" "web_sg" {
  vpc_id = aws_vpc.netflix_vpc.id

  # Add ingress rules as per your requirements
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Add egress rules as per your requirements
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
