\# Exercise 5 – Helm Upgrade Failure



\## Objective



Investigate a Helm upgrade failure caused by an immutable Kubernetes field.



\---



\## Error



```bash

helm upgrade payment-service .

```



Output:



```text

UPGRADE FAILED:

cannot patch Deployment:



spec.selector:

Invalid value:

field is immutable

```



\---



\## Root Cause



Version 1 Deployment used:



```yaml

matchLabels:

&#x20; app: payment

```



Version 2 Deployment changed to:



```yaml

matchLabels:

&#x20; app: payment-v2

```



The field `spec.selector.matchLabels` is immutable in Kubernetes.



Once a Deployment is created, Kubernetes uses the selector to identify and manage ReplicaSets and Pods.



Changing the selector after creation would cause the Deployment to lose ownership of existing Pods.



Therefore Kubernetes blocks the update and returns:



```text

field is immutable

```



\---



\## Investigation



Compared:



\### Version 1



```yaml

selector:

&#x20; matchLabels:

&#x20;   app: payment

```



\### Version 2



```yaml

selector:

&#x20; matchLabels:

&#x20;   app: payment-v2

```



This change triggered the Helm upgrade failure.



\---



\## Safe Upgrade Approach



\### Recommended



Keep:



```yaml

selector:

&#x20; matchLabels:

&#x20;   app: payment

```



unchanged.



Only modify:



\* Image

\* Replicas

\* Resources

\* Environment Variables



These fields are safe to update.



\### Alternative



Delete and recreate the Deployment:



```bash

kubectl delete deployment payment-service

helm install payment-service .

```



Risk:



\* Downtime



\### Production Approach



Create a new Deployment:



```text

payment-service-v2

```



and gradually move traffic using Blue-Green or Canary deployment strategies.



\---



\## Files



\* failure-scenario.yaml

\* changed-version.yaml

\* fixed-version.yaml



\---



\## Learning Outcome



Learned why immutable field errors occur in Kubernetes and how to perform safe Helm upgrades without modifying Deployment selectors.



