# ReadMe

## Steps

### 1. Create namespace where the app will install to

~~~bash
kubectl create ns argocd-apps
~~~

### 2. Create ArgoCD app via CLI

~~~bash
argocd app create guestbook \
  --repo https://github.com/helloyuanyuan/argocd-apps.git \
  --path guestbook --dest-server https://kubernetes.default.svc \
  --dest-namespace argocd-apps
~~~

### 3. View created ArgoCD app status

~~~bash
argocd app get guestbook
~~~

### 4. Sync ArgoCD app via CLI

~~~bash
argocd app sync guestbook
~~~
