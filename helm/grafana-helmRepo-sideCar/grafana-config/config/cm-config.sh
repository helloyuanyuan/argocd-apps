#!/bin/bash

kubectl create configmap grafana-config \
  --from-file=dashboard-provider.yaml=dashboard-provider.yaml \
  --from-file=datasource-influxdb.yaml=datasource-influxdb.yaml \
  --from-file=ldap.toml=ldap.toml \
  --dry-run=client -o yaml > ../grafana-config.yaml

# Mac Sed
sed -i '' '/creationTimestamp/d' ../grafana-config.yaml