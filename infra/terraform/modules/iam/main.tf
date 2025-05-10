// Create IAM Role
resource "aws_iam_role" "this" {
  name               = "${var.name_prefix}-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  tags               = var.common_tags
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = var.trusted_services // e.g., ["ec2.amazonaws.com"]
    }
  }
}

// Attach managed policies
resource "aws_iam_role_policy_attachment" "managed" {
  for_each = toset(var.managed_policy_arns)
  role     = aws_iam_role.this.name
  policy_arn = each.value
}

// Inline policy for custom permissions
resource "aws_iam_policy" "this" {
  name        = "${var.name_prefix}-policy"
  description = "Inline policy for ${var.name_prefix}"
  policy      = var.inline_policy_json
  tags        = var.common_tags
}

resource "aws_iam_role_policy_attachment" "inline" {
  role       = aws_iam_role.this.name
  policy_arn = aws_iam_policy.this.arn
}