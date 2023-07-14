# instances.tf

resource "aws_instance" "web_instance" {
  ami           = "ami-0123456789abcdef0"  # Replace with desired AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  security_group_ids = [aws_security_group.web_sg.id]

  # Add additional configuration as needed
}

resource "aws_autoscaling_group" "web_asg" {
  desired_capacity = 2
  max_size         = 5
  min_size         = 1

  launch_template {
    id      = aws_instance.web_instance.id
    version = "$Latest"
  }

  # Add additional configuration as needed
}
