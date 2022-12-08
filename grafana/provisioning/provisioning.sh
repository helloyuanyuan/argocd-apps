#!/bin/bash

kubectl create configmap grafana-config \
  --from-file=provisioning-dashboard-jmeterloadtest.json=provisioning-dashboard-jmeterloadtest.json \
  --from-file=provisioning-dashboard-provider.yaml=provisioning-dashboard-provider.yaml \
  --from-file=provisioning-datasource-influxdb.yaml=provisioning-datasource-influxdb.yaml \
  --from-file=provisioning-ldap.toml=provisioning-ldap.toml \
  --dry-run=client -o yaml > ../grafana-config.yaml

# Mac Sed
sed -i '' '/creationTimestamp/d' ../grafana-config.yaml