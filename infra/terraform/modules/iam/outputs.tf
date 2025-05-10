output "role_arn" {
  description = "ARN of the created IAM role"
  value       = aws_iam_role.this.arn
}

output "policy_arn" {
  description = "ARN of the inline policy"
  value       = aws_iam_policy.this.arn
}
