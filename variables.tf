variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-west-2"  # Replace with your desired AWS region
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
}
