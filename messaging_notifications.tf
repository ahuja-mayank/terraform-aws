# messaging_notifications.tf

resource "aws_sns_topic" "netflix_notifications_topic" {
  name = "netflix-notifications-topic"  # Replace with your desired topic name

  # Add additional configuration as needed
}

resource "aws_ses_domain_identity" "netflix_email_identity" {
  domain = "netflix.com"  # Replace with your desired domain name

  # Add additional configuration as needed
}
