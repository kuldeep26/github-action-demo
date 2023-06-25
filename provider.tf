terraform {
  backend "s3" {
    bucket = var.tfstate_bucket_name
    key    = "dev-us-region"
    region = var.region
  }
}