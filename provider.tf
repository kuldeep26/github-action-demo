terraform {
  backend "s3" {
    bucket = var.tfstate_bucket_name
    key    = "dev/usregion"
    region = var.region
  }
}