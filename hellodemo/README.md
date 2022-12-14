# ReadMe

## Steps

### 1. Create namespace where the app will install to

~~~bash
kubectl create ns argocd-apps
~~~

### 2. Create ArgoCD app via CLI

~~~bash
argocd app create hellodemo \
  --repo https://github.com/helloyuanyuan/argocd-apps.git \
  --path hellodemo --dest-server https://kubernetes.default.svc \
  --dest-namespace argocd-apps
~~~

Or

~~~bash
argocd app create -f ./argocd/argocd.app.hellodemo.yaml
~~~

Or

~~~bash
kubectl create -f ./argocd/argocd.app.hellodemo.yaml
~~~

### 3. View created ArgoCD app status

~~~bash
argocd app get hellodemo
~~~

### 4. Sync ArgoCD app via CLI

~~~bash
argocd app sync hellodemo
~~~
