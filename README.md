# terraform-aws-s3
Terraform module for create [Amazon s3](https://www.terraform.io/docs/providers/aws/r/s3_bucket.html) `Bucket` on AWS

#### Usage

```
provider "aws" {
  region = "eu-central-1"
}

module "ecs_fargate" {
  source = "git::github.com/lbrealdev/terraform-aws-s3"

  bucket_name = "yourbucketname"
  region      = "eu-central-1"
  versioning  = true
}
```