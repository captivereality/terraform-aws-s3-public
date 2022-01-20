provider "aws" {
  region  = var.region
  profile = var.profile
}

module "s3-public" {

  # use this if testing a published private module
  source  = "app.terraform.io/captivereality/s3-public/aws"
  version = "0.3.0"

  # use this if testing a local module
  # source = "./modules/s3-public"

  profile     = "captivereality"
  region      = "eu-west-2"
  bucket_name = "mc-test-s3-public"
}