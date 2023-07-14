# serverless_chat.tf

resource "aws_chime_app_instance" "netflix_chat_app_instance" {
  name = "netflix-chat-app-instance"  # Replace with your desired app instance name

  # Add additional configuration as needed
}

resource "aws_chime_user" "netflix_chat_user" {
  user_id     = "netflix-chat-user"  # Replace with your desired user ID
  app_instance_arn = aws_chime_app_instance.netflix_chat_app_instance.arn

  # Add additional configuration as needed
}
