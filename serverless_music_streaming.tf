# serverless_music_streaming.tf

resource "aws_dynamodb_table" "netflix_music_table" {
  name           = "netflix-music-table"  # Replace with your desired table name
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "N"
  }

  # Add additional attributes and configuration as needed
}

resource "aws_lambda_function" "netflix_music_function" {
  function_name = "netflix-music-function"  # Replace with your desired function name
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  timeout       = 10

  # Add additional configuration as needed
}

resource "aws_s3_bucket" "netflix_music_bucket" {
  bucket = "netflix-music-bucket"  # Replace with your desired bucket name

  # Add additional configuration as needed
}
