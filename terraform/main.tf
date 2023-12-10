provider "aws" {
  region = "us-east-1"
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

terraform {
  backend "remote" {
    organization = "SOME-ORGANIZATION-MJ"
  workspaces {
    name = "SOME-PROJECT-MJ"
  }
  }
}
