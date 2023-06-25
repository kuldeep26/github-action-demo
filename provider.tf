<<<<<<< HEAD
terraform {
  backend "s3" {
    bucket = var.tfstate_bucket_name
    key    = "usregion/terraform.tfstate"
    region = var.region
  }
=======
terraform {
  backend "s3" {
    bucket = var.tfstate_bucket_name
    key    = "usregion/terraform.tfstate"
    region = var.region
  }
>>>>>>> 11a36cd5e6c63f0ec0826280ad4e4a6917d1b80a
}