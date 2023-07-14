# infrastructure_deployment.tf

resource "aws_codecommit_repository" "netflix_code_repo" {
  repository_name = "netflix-code-repo"  # Replace with your desired repository name

  # Add additional configuration as needed
}

resource "aws_codepipeline" "netflix_code_pipeline" {
  name     = "netflix-code-pipeline"  # Replace with your desired pipeline name
  role_arn = "arn:aws:iam::123456789012:role/netflix-code-pipeline-role"  # Replace with the ARN of your pipeline role

  # Add additional configuration as needed
}

resource "aws_codedeploy_deployment_group" "netflix_deployment_group" {
  app_name               = "netflix-app"  # Replace with your desired application name
  deployment_group_name  = "netflix-deployment-group"  # Replace with your desired deployment group name
  deployment_config_name = "CodeDeployDefault.OneAtATime"  # Replace with your desired deployment configuration name

  # Add additional configuration as needed
}
