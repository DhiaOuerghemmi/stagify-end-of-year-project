# Terraform Monitoring Module

Provisions AWS Managed Prometheus (AMP) and Grafana (AMG) workspaces.

## Usage

```hcl
module "monitoring" {
  source      = "../modules/monitoring"
  name_prefix = "stagify"
  common_tags = { Environment = var.environment }
}
