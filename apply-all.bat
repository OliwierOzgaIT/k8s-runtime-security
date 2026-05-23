@echo off
kubectl apply -f manifests/namespace.yml
kubectl apply -f manifests/rbac.yml
kubectl apply -f manifests/secret.yml
kubectl apply -f manifests/configmap.yml
kubectl apply -f manifests/deployment.yml
kubectl apply -f manifests/service.yml
kubectl apply -f manifests/networkpolicy.yml
kubectl apply -f manifests/hpa.yml
echo.
echo Done. Check status:
kubectl get all -n secure-app
