# serverless_data_streaming.tf

resource "aws_kinesis_stream" "netflix_kinesis_stream" {
  name             = "netflix-kinesis-stream"  # Replace with your desired stream name
  shard_count      = 1
  retention_period = 24

  # Add additional configuration as needed
}
