#!/bin/bash

kubectl create configmap grafana-config-dashboards \
  --from-file=dashboard-globalinpart.json=dashboard-globalinpart.json \
  --from-file=dashboard-qapter.json=dashboard-qapter.json \
  --dry-run=client -o yaml > ../grafana-config-dashboards.yaml

# Mac Sed
sed -i '' '/creationTimestamp/d' ../grafana-config-dashboards.yaml