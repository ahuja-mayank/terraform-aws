# serverless_api.tf

resource "aws_api_gateway_rest_api" "netflix_api" {
  name        = "netflix-api"  # Replace with your desired API name
  description = "Netflix API"

  # Add additional configuration as needed
}

resource "aws_lambda_function" "netflix_api_function" {
  function_name = "netflix-api-function"  # Replace with your desired function name
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  timeout       = 10

  # Add additional configuration as needed
}

resource "aws_api_gateway_resource" "netflix_api_resource" {
  rest_api_id = aws_api_gateway_rest_api.netflix_api.id
  parent_id   = aws_api_gateway_rest_api.netflix_api.root_resource_id
  path_part   = "resource"

  # Add additional configuration as needed
}

resource "aws_api_gateway_method" "netflix_api_method" {
  rest_api_id   = aws_api_gateway_rest_api.netflix_api.id
  resource_id   = aws_api_gateway_resource.netflix_api_resource.id
  http_method   = "GET"
  authorization = "NONE"

  # Add additional configuration as needed
}
