# media_storage.tf

resource "aws_efs_file_system" "netflix_efs" {
  creation_token = "netflix-efs"  # Replace with your desired creation token

  # Add additional configuration as needed
}

resource "aws_efs_mount_target" "netflix_efs_mount_target" {
  file_system_id = aws_efs_file_system.netflix_efs.id
  subnet_id      = aws_subnet.public_subnet.id

  # Add additional configuration as needed
}
