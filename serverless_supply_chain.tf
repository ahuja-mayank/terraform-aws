# serverless_supply_chain.tf

resource "aws_forecast_dataset_group" "netflix_forecast_dataset_group" {
  dataset_group_name = "netflix-forecast-dataset-group"  # Replace with your desired dataset group name

  # Add additional configuration as needed
}

resource "aws_forecast_predictor" "netflix_forecast_predictor" {
  predictor_name     = "netflix-forecast-predictor"  # Replace with your desired predictor name
  forecast_horizon   = 7
  dataset_group_arn  = aws_forecast_dataset_group.netflix_forecast_dataset_group.arn

  # Add additional configuration as needed
}
