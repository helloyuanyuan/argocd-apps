#!/bin/bash

kubectl create configmap grafana-config-dashboards \
  --from-file=dashboard-project-a.json=dashboard-project-a.json \
  --from-file=dashboard-project-b.json=dashboard-project-b.json \
  --from-file=dashboard-project-c.json=dashboard-project-c.json \
  --dry-run=client -o yaml > ../grafana-config-dashboards.yaml

# Mac Sed
sed -i '' '/creationTimestamp/d' ../grafana-config-dashboards.yaml