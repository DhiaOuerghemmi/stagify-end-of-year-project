environment        = "dev"
name_prefix        = "stagify-dev"
vpc_cidr           = "10.0.0.0/16"           
availability_zones = ["us-east-1a","us-east-1b","us-east-1c"]
public_subnet_cidrs= ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]

# IAM inputs
trusted_services    = ["ec2.amazonaws.com"]
managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
inline_policy_json  = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[{"Action":["logs:CreateLogGroup","logs:PutLogEvents"],"Effect":"Allow","Resource":"*"}]
}
POLICY

common_tags = {
  Environment = "dev"
  Project     = "stagify"
}
