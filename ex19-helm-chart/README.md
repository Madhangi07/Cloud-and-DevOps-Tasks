\# Exercise 19 - Helm Chart Engineering



\## Objective



Build a reusable Helm chart supporting multiple environments.



\## Environment Support



\* Dev

\* QA

\* Prod



\## Features Implemented



\* Helm Chart

\* Environment-specific replica configuration

\* Environment-specific resource configuration

\* Kubernetes Deployment

\* Kubernetes Service



\## Environment Configuration



\### Dev



\* Replicas: 1

\* CPU: 100m

\* Memory: 128Mi



\### QA



\* Replicas: 2

\* CPU: 200m

\* Memory: 256Mi



\### Prod



\* Replicas: 5

\* CPU: 500m

\* Memory: 512Mi



\## Validation Commands



\### Dev



helm template payment-dev . -f values-dev.yaml



\### QA



helm template payment-qa . -f values-qa.yaml



\### Prod



helm template payment-prod . -f values-prod.yaml



\## Folder Structure



ex19-helm-chart/

└── payment-service-chart/

├── Chart.yaml

├── values.yaml

├── values-dev.yaml

├── values-qa.yaml

├── values-prod.yaml

└── templates/



