# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# DEPLOY s3 BUCKET
# ---------------------------------------------------------------------------------------------------------------------

module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket     = var.bucket_name
  region     = var.region
  versioning = var.versioning
}