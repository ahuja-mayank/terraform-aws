# machine_learning.tf

resource "aws_sagemaker_notebook_instance" "netflix_notebook_instance" {
  name            = "netflix-notebook-instance"  # Replace with your desired notebook instance name
  instance_type   = "ml.t2.medium"
  role_arn        = aws_iam_role.sagemaker_role.arn

  # Add additional configuration as needed
}

resource "aws_sagemaker_endpoint" "netflix_model_endpoint" {
  endpoint_name = "netflix-model-endpoint"  # Replace with your desired endpoint name
  role_arn      = aws_iam_role.sagemaker_role.arn

  # Add additional configuration as needed
}
