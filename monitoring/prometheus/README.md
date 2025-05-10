# Prometheus Helm Chart

This chart deploys Prometheus with basic scrape configs and alerting rules.

## Usage

```bash
helm upgrade --install prometheus monitoring/prometheus/helm-chart \
  --namespace monitoring \
  -f monitoring/prometheus/helm-chart/values.yaml
```
