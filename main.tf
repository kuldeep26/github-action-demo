resource "aws_s3_bucket" "demo_bucket" {
  bucket = "xyz-test-github-actions"
}

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  bucket = aws_s3_bucket.demo_bucket.id
  acl    = "private"
}