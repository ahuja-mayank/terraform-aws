# content_delivery.tf

resource "aws_cloudfront_distribution" "netflix_cdn" {
  origin {
    domain_name = aws_s3_bucket.netflix_bucket.bucket_regional_domain_name
    origin_id   = "S3Origin"
  }

  default_cache_behavior {
    target_origin_id     = "S3Origin"
    allowed_methods      = ["GET", "HEAD", "OPTIONS"]
    cached_methods       = ["GET", "HEAD", "OPTIONS"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
  }

  # Add additional configuration as needed
}

resource "aws_media_convert_queue" "netflix_media_convert_queue" {
  name = "netflix-media-convert-queue"  # Replace with your desired queue name

  # Add additional configuration as needed
}
