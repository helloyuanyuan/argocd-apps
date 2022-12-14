# ReadMe

## Step1: ArgoCD Helm install Config

~~~bash
argocd app create -f ./grafana-config/argocd/argocd.app.grafana-config.yaml
~~~

## Step2: ArgoCD Helm install App

~~~bash
argocd app create -f ./grafana-app/argocd/argocd.app.grafana-app.yaml
~~~
