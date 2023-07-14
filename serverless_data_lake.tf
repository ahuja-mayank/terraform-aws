# serverless_data_lake.tf

resource "aws_s3_bucket" "netflix_data_lake_bucket" {
  bucket = "netflix-data-lake-bucket"  # Replace with your desired bucket name

  # Add additional configuration as needed
}

resource "aws_glue_catalog_database" "netflix_data_lake_database" {
  name = "netflix-data-lake-database"  # Replace with your desired database name

  # Add additional configuration as needed
}

resource "aws_glue_catalog_table" "netflix_data_lake_table" {
  database_name = aws_glue_catalog_database.netflix_data_lake_database.name
  name          = "netflix-data-lake-table"  # Replace with your desired table name

  # Add additional configuration as needed
}

resource "aws_athena_workgroup" "netflix_data_lake_workgroup" {
  name = "netflix-data-lake-workgroup"  # Replace with your desired workgroup name

  # Add additional configuration as needed
}
