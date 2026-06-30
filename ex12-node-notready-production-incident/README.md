# Exercise 12 – Node NotReady Production Incident

## Objective

Investigate and recover a Kubernetes worker node that entered the **NotReady** state due to disk pressure.

---

## Incident

### Node Status

```
NotReady
```

### Describe Node

```
DiskPressure=True
```

### Journal

```
no space left on device
```

### Additional Evidence

```
du -sh /var/log/containers/*
95 GB consumed
```

---

## Symptoms

- Worker node changed to **NotReady**
- New Pods could not be scheduled
- Existing workloads experienced failures
- Kubelet reported **DiskPressure**
- Disk utilization reached nearly 100%

---

## Investigation

### Commands Used

```bash
kubectl get nodes

kubectl describe node <node-name>

df -h

du -sh /var/log/containers/*

journalctl -u kubelet
```

### Findings

- Node status was **NotReady**
- `DiskPressure=True`
- `/var/log/containers` occupied approximately **95 GB**
- Kubelet could not write to disk because the filesystem was full

---

## Root Cause

Container log files continuously accumulated under:

```
/var/log/containers
```

Since log rotation was not configured, disk usage reached its limit.

The kubelet detected **DiskPressure** and marked the node as **NotReady**, preventing Kubernetes from scheduling additional Pods.

---

## Resolution

1. Drain the affected node.
2. Remove old container logs.
3. Remove unused container images.
4. Restart the kubelet service.
5. Configure automatic log rotation.
6. Uncordon the node after recovery.

---

## Validation

Run the following commands:

```bash
kubectl get nodes

kubectl describe node <node-name>

df -h
```

Expected Result:

```
Node Status : Ready

DiskPressure : False

Disk Usage : Below 80%
```

---

## Files Included

| File | Purpose |
|------|---------|
| README.md | Incident report |
| commands.sh | Investigation commands |
| node-status.txt | Sample investigation output |
| cleanup.sh | Cleanup script |
| logrotate.conf | Log rotation configuration |
| daemonset-logrotate.yaml | Logrotate DaemonSet |

---

## Lessons Learned

- Configure log rotation on all worker nodes.
- Monitor node disk utilization using Prometheus and Grafana.
- Remove unused container images regularly.
- Configure alerts for DiskPressure events before nodes become NotReady.