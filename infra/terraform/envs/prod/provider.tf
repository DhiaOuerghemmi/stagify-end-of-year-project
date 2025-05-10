terraform {
  required_version = ">= 1.3"
  backend "s3" {
    bucket         = "your-terraform-state-bucket"     # ✏️ TODO: change to your bucket
    key            = "stagify/prod/terraform.tfstate"
    region         = "us-east-1"                       # ✏️ TODO: change if needed
    dynamodb_table = "your-lock-table"                 # ✏️ TODO: change for state locking
  }
}

provider "aws" {
  region = "us-east-1"                                 # ✏️ TODO: set AWS region for prod
}
