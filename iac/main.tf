resource "aws_s3_bucket" "shortener_bucket" {
  bucket = "shortener-bucket" # Bucket names must be globally unique # Defines who can access the bucket (e.g., private, public-read, etc.)

  tags = {
    Name        = "ShortenerBucket"
    Environment = "Dev"
  }
}
