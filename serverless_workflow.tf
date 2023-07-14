# serverless_workflow.tf

resource "aws_sfn_state_machine" "netflix_workflow_state_machine" {
  name     = "netflix-workflow-state-machine"  # Replace with your desired state machine name
  definition = <<EOF
{
  "Comment": "Netflix Workflow State Machine",
  "StartAt": "StartState",
  "States": {
    "StartState": {
      "Type": "Pass",
      "End": true
    }
  }
}
EOF

  # Add additional configuration as needed
}
