kubectl get nodes

kubectl describe node <node-name>

df -h

du -sh /var/log/containers/*

journalctl -u kubelet

kubectl drain <node>

systemctl restart kubelet

kubectl uncordon <node>

kubectl get nodes