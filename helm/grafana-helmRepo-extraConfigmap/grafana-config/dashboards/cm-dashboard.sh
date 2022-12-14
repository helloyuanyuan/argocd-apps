#!/bin/bash

kubectl create configmap grafana-config-dashboards \
  --from-file=dashboard-ProjectA.json=dashboard-ProjectA.json \
  --from-file=dashboard-ProjectB.json=dashboard-ProjectB.json \
  --from-file=dashboard-ProjectC.json=dashboard-ProjectC.json \
  --dry-run=client -o yaml > ../grafana-config-dashboards.yaml

# Mac Sed
sed -i '' '/creationTimestamp/d' ../grafana-config-dashboards.yaml