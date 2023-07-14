# content_protection.tf

resource "aws_iam_role" "netflix_iam_role" {
  name = "netflix-iam-role"  # Replace with your desired IAM role name

  # Add additional configuration as needed
}

resource "aws_kms_key" "netflix_kms_key" {
  description = "Netflix KMS Key"
  deletion_window_in_days = 30

  # Add additional configuration as needed
}
