# ReadMe

## Steps

### 1. Create namespace where the app will install to

~~~bash
kubectl create ns argocd-apps
~~~

### 2. Create ArgoCD app via CLI

~~~bash
argocd app create -f argocd.app.nasnfs.yaml
~~~

Or

~~~bash
kubectl create -f argocd.app.nasnfs.yaml
~~~

### 3. View created ArgoCD app status

~~~bash
argocd app get nasnfs
~~~

### 4. Sync ArgoCD app via CLI

~~~bash
argocd app sync nasnfs
~~~
