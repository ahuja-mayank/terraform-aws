# serverless_ecommerce.tf

resource "aws_sns_topic" "netflix_ecommerce_topic" {
  name = "netflix-ecommerce-topic"  # Replace with your desired topic name

  # Add additional configuration as needed
}

resource "aws_sqs_queue" "netflix_ecommerce_queue" {
  name = "netflix-ecommerce-queue"  # Replace with your desired queue name

  # Add additional configuration as needed
}
