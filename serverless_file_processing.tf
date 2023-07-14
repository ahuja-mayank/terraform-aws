# serverless_file_processing.tf

resource "aws_sfn_state_machine" "netflix_file_processing_state_machine" {
  name     = "netflix-file-processing-state-machine"  # Replace with your desired state machine name
  definition = <<EOF
{
  "Comment": "Netflix File Processing State Machine",
  "StartAt": "ProcessFile",
  "States": {
    "ProcessFile": {
      "Type": "Task",
      "Resource": "${aws_lambda_function.netflix_function.arn}",
      "End": true
    }
  }
}
EOF

  # Add additional configuration as needed
}
