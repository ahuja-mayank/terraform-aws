# serverless_robotics.tf

resource "aws_robomaker_robot" "netflix_robot" {
  name = "netflix-robot"  # Replace with your desired robot name

  # Add additional configuration as needed
}

resource "aws_robomaker_simulation_application" "netflix_simulation_app" {
  name = "netflix-simulation-app"  # Replace with your desired application name

  # Add additional configuration as needed
}
