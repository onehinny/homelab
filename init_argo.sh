helm install argocd -n argocd charts/argocd --create-namespace
kubectl -n argocd wait --for condition=established --timeout=60s crd/applications.argoproj.io
kubectl apply -f argocd/apps/root.yaml
