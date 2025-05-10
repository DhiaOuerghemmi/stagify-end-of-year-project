bucket         = "your-terraform-state-bucket"         # ✏️ same as provider.tf
key            = "stagify/prod/terraform.tfstate"
region         = "us-east-1"
dynamodb_table = "your-lock-table"
