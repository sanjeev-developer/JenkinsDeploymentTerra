terraform {
  backend "s3" {
    bucket         = var.s3_bucket_name
    key            = var.s3_bucket_tfstate # The name of the state file in the bucket
    region         = var.s3_bucket_region
  }
}
