# search_recommendations.tf

resource "aws_elasticsearch_domain" "netflix_search_domain" {
  domain_name           = "netflix-search-domain"  # Replace with your desired domain name
  elasticsearch_version = "7.10"

  # Add additional configuration as needed
}

resource "aws_sagemaker_endpoint" "netflix_recommendations_endpoint" {
  endpoint_name = "netflix-recommendations-endpoint"  # Replace with your desired endpoint name

  # Add additional configuration as needed
}
