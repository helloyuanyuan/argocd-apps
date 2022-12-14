# ReadMe

## Helm install

~~~bash
helm install -f values.yaml jmetertest .
~~~

## ArgoCD Helm install

~~~bash
argocd app create -f ./argocd/argocd.app.jmetertest.yaml
~~~

Or

~~~bash
kubectl create -f ./argocd/argocd.app.jmetertest.yaml
~~~
