# serverless_data_processing.tf

resource "aws_glue_catalog_database" "netflix_glue_database" {
  name = "netflix-glue-database"  # Replace with your desired database name

  # Add additional configuration as needed
}

resource "aws_glue_catalog_table" "netflix_glue_table" {
  database_name = aws_glue_catalog_database.netflix_glue_database.name
  name          = "netflix-glue-table"  # Replace with your desired table name

  # Add additional configuration as needed
}
