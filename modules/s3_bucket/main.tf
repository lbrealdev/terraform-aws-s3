# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------

terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE s3 BUCKET
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_s3_bucket" "main" {
  count = var.create_s3 ? 1 : 0

  bucket        = var.bucket
  region        = var.region
  acl           = var.acl
  force_destroy = var.force_destroy
  policy        = file("${path.module}/policy/bucket_policy.json")

  versioning {
    enabled = var.versioning
  }

  dynamic "website" {
    for_each = var.website
    content {
      index_document = website.value["index"]
      error_document = website.value["error"]
      routing_rules  = website.value["routing"]
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.sse_algorithm
      }
    }
  }
}