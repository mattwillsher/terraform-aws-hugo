terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.50"
    }
  }

  required_version = "~> 1.0.2"
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "content" {
  bucket = "willsher.systems"
  acl    = "public-read"
}