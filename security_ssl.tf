# security_ssl.tf

resource "aws_acm_certificate" "netflix_certificate" {
  domain_name       = "netflix.com"  # Replace with your desired domain name
  validation_method = "DNS"

  # Add additional configuration as needed
}
