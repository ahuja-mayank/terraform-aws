# serverless_social_networking.tf

resource "aws_neptune_cluster" "netflix_neptune_cluster" {
  cluster_identifier = "netflix-neptune-cluster"  # Replace with your desired cluster identifier
  engine_version     = "1.0.2"

  # Add additional configuration as needed
}

resource "aws_neptune_cluster_instance" "netflix_neptune_instance" {
  cluster_identifier = aws_neptune_cluster.netflix_neptune_cluster.id
  instance_class     = "db.r5.large"

  # Add additional configuration as needed
}
