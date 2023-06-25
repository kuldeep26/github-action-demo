resource "aws_s3_bucket" "demo_bucket" {
  bucket = "xyz-test-github-actions"
}

resource "aws_s3_bucket_acl" "demo_bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.demo_bucket_ownership]
  bucket     = aws_s3_bucket.demo_bucket.id
  acl        = "private"
}

resource "aws_s3_bucket_ownership_controls" "demo_bucket_ownership" {
  bucket = aws_s3_bucket.demo_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}