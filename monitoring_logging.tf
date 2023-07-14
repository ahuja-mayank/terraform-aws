# monitoring_logging.tf

resource "aws_cloudtrail" "netflix_cloudtrail" {
  name = "netflix-cloudtrail"  # Replace with your desired CloudTrail name

  # Add additional configuration as needed
}

resource "aws_cloudwatch_log_group" "netflix_log_group" {
  name = "netflix-log-group"  # Replace with your desired log group name

  # Add additional configuration as needed
}
