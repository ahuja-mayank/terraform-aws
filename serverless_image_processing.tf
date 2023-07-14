# serverless_image_processing.tf

resource "aws_lambda_function" "netflix_image_processing_function" {
  function_name = "netflix-image-processing-function"  # Replace with your desired function name
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  timeout       = 10

  # Add additional configuration as needed
}

resource "aws_rekognition_collection" "netflix_image_processing_collection" {
  name = "netflix-image-processing-collection"  # Replace with your desired collection name

  # Add additional configuration as needed
}
