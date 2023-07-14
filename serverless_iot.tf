# serverless_iot.tf

resource "aws_iot_thing" "netflix_iot_thing" {
  name = "netflix-iot-thing"  # Replace with your desired thing name

  # Add additional configuration as needed
}

resource "aws_iot_policy" "netflix_iot_policy" {
  name = "netflix-iot-policy"  # Replace with your desired policy name
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "iot:Publish",
      "Resource": "arn:aws:iot:${var.region}:${var.account_id}:topic/netflix/*"
    }
  ]
}
EOF

  # Add additional configuration as needed
}
