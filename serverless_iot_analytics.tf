# serverless_iot_analytics.tf

resource "aws_iot_analytics_channel" "netflix_iot_analytics_channel" {
  name = "netflix-iot-analytics-channel"  # Replace with your desired channel name

  # Add additional configuration as needed
}

resource "aws_iot_analytics_pipeline" "netflix_iot_analytics_pipeline" {
  name        = "netflix-iot-analytics-pipeline"  # Replace with your desired pipeline name
  channel_name = aws_iot_analytics_channel.netflix_iot_analytics_channel.name

  # Add additional configuration as needed
}
