# cdn_video_packaging.tf

resource "aws_media_package_channel" "netflix_media_package_channel" {
  id   = "netflix-media-package-channel"  # Replace with your desired channel ID
  description = "Netflix Media Package Channel"

  # Add additional configuration as needed
}

resource "aws_cloudfront_distribution" "netflix_cdn" {
  origin {
    domain_name = aws_media_package_channel.netflix_media_package_channel.hls_ingest_url
    origin_id   = "MediaPackageOrigin"
  }

  # Add additional configuration as needed
}
