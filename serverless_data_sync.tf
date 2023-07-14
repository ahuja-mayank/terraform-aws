# serverless_data_sync.tf

resource "aws_datasync_agent" "netflix_datasync_agent" {
  name = "netflix-datasync-agent"  # Replace with your desired agent name

  # Add additional configuration as needed
}

resource "aws_datasync_task" "netflix_datasync_task" {
  source_location_arn      = "arn:aws:datasync:us-west-2:123456789012:location/netflix-source-location"
  destination_location_arn = "arn:aws:datasync:us-west-2:123456789012:location/netflix-destination-location"

  # Add additional configuration as needed
}
