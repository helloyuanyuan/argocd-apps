# ReadMe

## Helm install

~~~bash
helm install -f values.yaml mychart .
~~~

## ArgoCD Helm install

~~~bash
argocd app create -f ./argocd/argocd.app.mychart.yaml
~~~

Or

~~~bash
kubectl create -f ./argocd/argocd.app.mychart.yaml
~~~
