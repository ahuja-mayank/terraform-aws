# serverless_machine_learning_inference.tf

resource "aws_ei_instance_profile_association" "netflix_ei_instance_profile_association" {
  instance_profile_arn = aws_iam_instance_profile.netflix_instance_profile.arn
  arn                 = aws_ei_instance_profile.netflix_ei_instance_profile.arn

  # Add additional configuration as needed
}

resource "aws_ei_endpoint" "netflix_ei_endpoint" {
  endpoint_name = "netflix-ei-endpoint"  # Replace with your desired endpoint name
  model_arn     = "arn:aws:elastic-inference:us-west-2:123456789012:elastic-inference-accelerator/netflix-accelerator"

  # Add additional configuration as needed
}
