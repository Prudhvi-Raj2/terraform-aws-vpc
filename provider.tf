terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
   backend "s3"{
      bucket = "vpc-module-test1"
      key    = "vpc-test" # you should have unique key, same cannot use in other repos
      region = "us-east-1"
      dynamodb_table = "vpc-module-test1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}