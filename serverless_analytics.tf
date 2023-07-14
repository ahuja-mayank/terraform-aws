# serverless_analytics.tf

resource "aws_athena_database" "netflix_athena_database" {
  name = "netflix-athena-database"  # Replace with your desired database name

  # Add additional configuration as needed
}

resource "aws_quicksight_data_source" "netflix_quicksight_data_source" {
  name            = "netflix-quicksight-data-source"  # Replace with your desired data source name
  type            = "ATHENA"
  athena_data_source {
    data_source_arn = aws_athena_database.netflix_athena_database.arn
    database_name   = aws_athena_database.netflix_athena_database.name
  }

  # Add additional configuration as needed
}
