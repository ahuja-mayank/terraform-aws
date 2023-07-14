# database.tf

resource "aws_db_instance" "netflix_db" {
  allocated_storage    = 20
  engine               = "mysql"  # Replace with your desired database engine
  instance_class       = "db.t2.micro"
  name                 = "netflix_database"  # Replace with your desired database name
  username             = "admin"  # Replace with your desired database username
  password             = "password"  # Replace with your desired database password
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  # Add additional configuration as needed
}
