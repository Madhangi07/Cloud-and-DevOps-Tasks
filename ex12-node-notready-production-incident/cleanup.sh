#!/bin/bash

echo "Cleaning old logs..."

find /var/log/containers -name "*.log" -mtime +7 -delete

crictl rmi --prune

systemctl restart kubelet

echo "Done."