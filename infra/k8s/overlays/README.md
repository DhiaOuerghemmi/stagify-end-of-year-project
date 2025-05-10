# Kustomize Overlays

This directory contains environment‑specific Kustomize overlays:

- **dev/**: Single‑replica deployments, minimal resources  
- **staging/**: Two‑replica deployments for integration testing  
- **prod/**: Three‑replica, resource‑constrained deployments for HA  

Deploy with:

```bash
kubectl apply -k infrastructure/k8s/overlays/<env>/
