# ReadMe

## Steps

### 1. Create namespace where the app will install to

~~~bash
kubectl create ns argocd-apps
~~~

### 2. Create ArgoCD app via CLI

~~~bash
argocd app create -f ./argocd/argocd.app.grafana.yaml
~~~

Or

~~~bash
kubectl create -f ./argocd/argocd.app.grafana.yaml
~~~

### 3. View created ArgoCD app status

~~~bash
argocd app get grafana
~~~

### 4. Sync ArgoCD app via CLI

~~~bash
argocd app sync grafana
~~~
