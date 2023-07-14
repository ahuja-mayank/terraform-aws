# serverless_messaging.tf

resource "aws_mq_broker" "netflix_mq_broker" {
  broker_name = "netflix-mq-broker"  # Replace with your desired broker name
  engine_type = "ACTIVEMQ"
  engine_version = "5.15.0"

  # Add additional configuration as needed
}
