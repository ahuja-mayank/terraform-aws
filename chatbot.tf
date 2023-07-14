# chatbot.tf

resource "aws_lex_bot" "netflix_chatbot" {
  name          = "netflix-chatbot"  # Replace with your desired chatbot name
  description   = "Netflix Chatbot"
  process_behavior = "BUILD"

  # Add additional configuration as needed
}
