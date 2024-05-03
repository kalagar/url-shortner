terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "shortener-bucket"
    key    = "url-shortener/state"
    region = "eu-central-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}
