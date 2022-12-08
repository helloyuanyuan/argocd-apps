# ReadMe

## Steps

### 1. Create namespace where the app will install to

~~~bash
kubectl create ns argocd-apps
~~~

### 2. Create ArgoCD app via CLI

~~~bash
argocd app create jmetertest \
  --repo https://github.com/helloyuanyuan/argocd-apps.git \
  --path jmetertest --dest-server https://kubernetes.default.svc \
  --dest-namespace argocd-apps
~~~

### 3. View created ArgoCD app status

~~~bash
argocd app get jmetertest
~~~

### 4. Sync ArgoCD app via CLI

~~~bash
argocd app sync jmetertest
~~~
