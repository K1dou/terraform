terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "devop-s"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }


}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
