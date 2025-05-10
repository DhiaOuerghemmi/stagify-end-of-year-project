output "workspace_id" {
  value       = aws_prometheus_workspace.this.id
  description = "AMP workspace ID"
}

output "grafana_url" {
  value       = aws_grafana_workspace.this.endpoint
  description = "AMG workspace endpoint URL"
}
