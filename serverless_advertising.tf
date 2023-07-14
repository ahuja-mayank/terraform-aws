# serverless_advertising.tf

resource "aws_sqs_queue" "netflix_advertising_queue" {
  name = "netflix-advertising-queue"  # Replace with your desired queue name

  # Add additional configuration as needed
}

resource "aws_sns_topic" "netflix_advertising_topic" {
  name = "netflix-advertising-topic"  # Replace with your desired topic name

  # Add additional configuration as needed
}
