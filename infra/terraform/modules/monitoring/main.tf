resource "aws_prometheus_workspace" "this" {
  alias = "${var.name_prefix}-amp"
  tags  = var.common_tags
}

resource "aws_grafana_workspace" "this" {
  name                 = "${var.name_prefix}-amg"
  account_access_type  = "CURRENT_ACCOUNT"
  authentication_providers = ["AWS_SSO"]
  permission_type      = "SERVICE_MANAGED"
  tags                 = var.common_tags
}

output "amp_workspace_id" {
  value = aws_prometheus_workspace.this.id
}

output "amg_workspace_url" {
  value = aws_grafana_workspace.this.endpoint
}