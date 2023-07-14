# analytics_insights.tf

resource "aws_kinesis_stream" "netflix_kinesis_stream" {
  name             = "netflix-kinesis-stream"  # Replace with your desired stream name
  shard_count      = 1
  retention_period = 24

  # Add additional configuration as needed
}

resource "aws_redshift_cluster" "netflix_redshift_cluster" {
  cluster_identifier = "netflix-redshift-cluster"  # Replace with your desired cluster identifier
  master_username    = "admin"  # Replace with your desired master username
  master_password    = "password"  # Replace with your desired master password
  node_type          = "dc2.large"
  cluster_type       = "single-node"

  # Add additional configuration as needed
}

resource "aws_quicksight_analysis" "netflix_quicksight_analysis" {
  name            = "netflix-quicksight-analysis"  # Replace with your desired analysis name
  data_source_arn = aws_redshift_cluster.netflix_redshift_cluster.arn

  # Add additional configuration as needed
}
