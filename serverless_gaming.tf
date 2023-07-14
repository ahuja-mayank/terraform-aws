# serverless_gaming.tf

resource "aws_gamelift_game_session_queue" "netflix_gaming_queue" {
  name = "netflix-gaming-queue"  # Replace with your desired queue name

  # Add additional configuration as needed
}

resource "aws_gamelift_fleet" "netflix_gaming_fleet" {
  name     = "netflix-gaming-fleet"  # Replace with your desired fleet name
  build_id = "arn:aws:gamelift:us-west-2:123456789012:build/netflix-gaming-build"

  # Add additional configuration as needed
}
