terraform {
  required_providers {
    aws  = {
      source = "hashicorp/aws"
      version = "~>4.57.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3temp" {
  bucket = "${var.bucket_name}"
}
