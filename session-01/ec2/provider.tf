terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.19.0"
    }
 }
}

provider "aws" {
    # Configuration options
    ## Configure the AWS Provider 
   region = "us-east-1"
}