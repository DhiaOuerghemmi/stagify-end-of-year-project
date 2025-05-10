# Terraform IAM Module

## Description
Creates an IAM Role with both managed and inline policies.

## Usage

```hcl
module "iam" {
  source              = "../modules/iam"
  name_prefix         = "stagify"
  trusted_services    = ["ec2.amazonaws.com"]  # ✏️ Change as needed
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess",
  ]
  inline_policy_json  = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": ["logs:CreateLogGroup","logs:PutLogEvents"],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
POLICY
  common_tags         = { Environment = var.environment }
}
