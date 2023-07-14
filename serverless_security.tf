# serverless_security.tf

resource "aws_guardduty_detector" "netflix_guardduty_detector" {
  enable = true

  # Add additional configuration as needed
}
