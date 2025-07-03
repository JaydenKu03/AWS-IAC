resource "aws_cloudtrail" "trail" {
  name                          = "project-trail"
  s3_bucket_name                = aws_s3_bucket.trail_logs.bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true
}

resource "aws_s3_bucket" "trail_logs" {
  bucket = "project-trail-logs-${random_id.suffix.hex}"
}

resource "random_id" "suffix" {
  byte_length = 4
}
