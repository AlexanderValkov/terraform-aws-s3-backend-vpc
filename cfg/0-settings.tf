terraform {
  required_version = ">= 0.12.20, <= 0.12.29"

  backend "s3" {
    bucket = "tf-state-bucket-1312312313"
    key    = "test-state"
    region = "us-east-1"
    dynamodb_table = "tf-state-table"
  }
}

provider "aws" {
  version = "~> 3.0"
  region  = var.region
}
