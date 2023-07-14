# serverless_voice_processing.tf

resource "aws_lambda_function" "netflix_voice_processing_function" {
  function_name = "netflix-voice-processing-function"  # Replace with your desired function name
  runtime       = "python3.8"
  handler       = "lambda_function.lambda_handler"
  role          = aws_iam_role.lambda_role.arn
  timeout       = 10

  # Add additional configuration as needed
}

resource "aws_polly_lexicon" "netflix_voice_processing_lexicon" {
  name = "netflix-voice-processing-lexicon"  # Replace with your desired lexicon name
  content = <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<lexicon version="1.0" 
      xmlns="http://www.w3.org/2005/01/pronunciation-lexicon"
      xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
      xsi:schemaLocation="http://www.w3.org/2005/01/pronunciation-lexicon 
        http://www.w3.org/TR/2007/CR-pronunciation-lexicon-20071212/pls.xsd"
      alphabet="ipa"
      xml:lang="en-US">
  <lexeme>
    <grapheme>Netflix</grapheme>
    <phoneme>ˈnɛtfˌlɪks</phoneme>
  </lexeme>
</lexicon>
EOF

  # Add additional configuration as needed
}
