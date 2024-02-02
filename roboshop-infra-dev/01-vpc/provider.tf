terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # backend "s3" {
  #   bucket = "terraformjenk"
  #   key    = "vpc"
  #   region = "us-east-1"
  #   dynamodb_table = "daws76s-locking-dev"
  # }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"   
  access_key = "AKIAV3M7G2D26KQE3ECW"
  secret_key = "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"
}

