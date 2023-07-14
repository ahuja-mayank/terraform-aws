# authentication.tf

resource "aws_cognito_user_pool" "netflix_user_pool" {
  name = "netflix-user-pool"  # Replace with your desired user pool name

  # Add additional configuration as needed
}

resource "aws_cognito_identity_pool" "netflix_identity_pool" {
  identity_pool_name = "netflix-identity-pool"  # Replace with your desired identity pool name

  # Add additional configuration as needed
}
