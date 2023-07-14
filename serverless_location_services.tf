# serverless_location_services.tf

resource "aws_location_map" "netflix_location_map" {
  name = "netflix-location-map"  # Replace with your desired map name

  # Add additional configuration as needed
}

resource "aws_location_place_index" "netflix_place_index" {
  index_name = "netflix-place-index"  # Replace with your desired index name
  data_source = "Esri"

  # Add additional configuration as needed
}
