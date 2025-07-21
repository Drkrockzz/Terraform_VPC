terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.2.0"
    }
  }
}

provider "aws" {
  region = var.region
}


terraform {
  backend "s3" {
    bucket = "drktstate"
    key    = "state/lock"
    region =  "ap-south-1"
    use_lockfile = true
    dynamodb_table = "teraform_lockid"
  }
}