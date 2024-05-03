terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "YOUR_BUCKET_NAME_HERE"
    key    = "url-shortener/state"
  }
}

# Configure the AWS Provider
provider "aws" {}
