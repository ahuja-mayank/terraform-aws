# serverless.tf

resource "aws_lambda_function" "netflix_function" {
  function_name = "netflix-function"  # Replace with your desired function name
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  timeout       = 10

  # Add additional configuration as needed
}
