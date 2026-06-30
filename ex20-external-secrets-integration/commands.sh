kubectl apply -f secretstore.yaml

kubectl apply -f externalsecret.yaml

kubectl get externalsecret

kubectl get secret

kubectl describe externalsecret payment-secret

kubectl rollout restart deployment payment-service