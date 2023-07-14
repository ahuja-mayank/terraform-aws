# serverless_document_processing.tf

resource "aws_textract_document_classifier" "netflix_document_classifier" {
  name               = "netflix-document-classifier"  # Replace with your desired classifier name
  document_classifier_arn = "arn:aws:textract:us-west-2:123456789012:document-classifier/netflix-document-classifier"
  
  # Add additional configuration as needed
}
