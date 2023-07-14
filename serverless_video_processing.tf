# serverless_video_processing.tf

resource "aws_media_convert_queue" "netflix_video_processing_queue" {
  name = "netflix-video-processing-queue"  # Replace with your desired queue name

  # Add additional configuration as needed
}

resource "aws_media_convert_job_template" "netflix_video_processing_job_template" {
  name      = "netflix-video-processing-job-template"  # Replace with your desired job template name
  queue      = aws_media_convert_queue.netflix_video_processing_queue.arn

  # Add additional configuration as needed
}
