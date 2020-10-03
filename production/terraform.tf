terraform {
  backend "s3" {
    bucket = "aws-terraform-tutorial"
    key    = "prd/terraform.tfstate"
    region = "ap-northeast-1"
    access_key = var.access_key
    secret_key = var.secret_key
  }
}

provider "aws" {
  region = "ap-northeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
