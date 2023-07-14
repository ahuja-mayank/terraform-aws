# serverless_event_processing.tf

resource "aws_cloudwatch_event_rule" "netflix_event_rule" {
  name        = "netflix-event-rule"  # Replace with your desired event rule name
  description = "Netflix Event Rule"

  # Add additional configuration as needed
}

resource "aws_cloudwatch_event_target" "netflix_event_target" {
  rule      = aws_cloudwatch_event_rule.netflix_event_rule.name
  target_id = "netflix-event-target"  # Replace with your desired target ID
  arn       = aws_lambda_function.netflix_function.arn

  # Add additional configuration as needed
}
