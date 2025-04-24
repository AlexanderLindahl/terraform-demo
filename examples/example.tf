# Example Terraform Configuration

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "example-terraform-demo-bucket"
  acl    = "private"
}
