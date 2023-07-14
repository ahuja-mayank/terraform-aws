# serverless_quantum_computing.tf

resource "aws_braket_device" "netflix_quantum_device" {
  device_type = "SIMULATOR"
  provider    = "Amazon"

  # Add additional configuration as needed
}

resource "aws_braket_task" "netflix_quantum_task" {
  action     = "aws:braket:cancelQuantumTask"
  device_arn = aws_braket_device.netflix_quantum_device.arn

  # Add additional configuration as needed
}
