# augmented_reality.tf

resource "aws_sumerian_host" "netflix_sumerian_host" {
  name = "netflix-sumerian-host"  # Replace with your desired host name

  # Add additional configuration as needed
}

resource "aws_sumerian_scene" "netflix_sumerian_scene" {
  name = "netflix-sumerian-scene"  # Replace with your desired scene name
  source = "s3://netflix-sumerian-bucket/scene.zip"  # Replace with the S3 path to your scene

  # Add additional configuration as needed
}
