kubectl apply -f namespace.yaml

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo add grafana https://grafana.github.io/helm-charts

helm repo update

helm install prometheus prometheus-community/prometheus \
-f prometheus-values.yaml \
-n observability

helm install grafana grafana/grafana \
-f grafana-values.yaml \
-n observability

helm install loki grafana/loki \
-f loki-values.yaml \
-n observability

helm install alloy grafana/alloy \
-f alloy-values.yaml \
-n observability

helm install tempo grafana/tempo \
-f tempo-values.yaml \
-n observability

kubectl get pods -n observability

kubectl get svc -n observability