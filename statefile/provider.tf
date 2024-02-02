terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "dawsterraforms3"
    key            = "tfs3/terraform.tfstate"
    region         = "us-east-1"
    encrypt        	   = true
    dynamodb_table = "tfstate-table"
  }
}
