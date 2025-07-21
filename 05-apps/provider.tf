terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.92.0"
    }
  }

  backend "s3" {
    bucket         = "dev-daw9"
    key            = "expense-dev-ansible/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "daws83s"
  }
}