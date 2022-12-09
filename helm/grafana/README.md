# ReadMe

## Helm install

~~~bash
helm install -f values.yaml grafana grafana/grafana
~~~

## ArgoCD Helm install

~~~bash
kubectl create -f argocd.app.grafana.yaml
~~~
