provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  s3_force_path_style         = true
  endpoint                    = "http://localhost:4566"
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "mi-bucket-desde-ci"
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.test_bucket.id
  acl    = "private"
}
