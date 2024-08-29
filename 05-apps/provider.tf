terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
       version = "5.64.0"
    }
  }
  backend "s3" {
    bucket="daws93-dev-bucket"
    key="exp-app-dev"
    region="us-east-1"
    dynamodb_table="daws93-locking" 
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}