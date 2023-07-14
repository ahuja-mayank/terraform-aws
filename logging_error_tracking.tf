# logging_error_tracking.tf

resource "aws_xray_sampling_rule" "netflix_xray_sampling_rule" {
  rule_name          = "netflix-xray-sampling-rule"  # Replace with your desired rule name
  priority           = 1
  fixed_rate         = 0.05
  http_method        = "*"
  url_path           = "*"
  service_name       = "*"
  service_type       = "*"
  resource_arn       = "*"
  host               = "*"
  priority           = 1
  version            = 1

  # Add additional configuration as needed
}

resource "aws_cloudwatch_log_group" "netflix_cloudwatch_log_group" {
  name = "netflix-cloudwatch-log-group"  # Replace with your desired log group name

  # Add additional configuration as needed
}
