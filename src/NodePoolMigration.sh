for node in $(kubectl get nodes -l cloud.google.com/gke-nodepool=pool-v4 -o=name); do
  kubectl drain --force --ignore-daemonsets --delete-emptydir-data --grace-period=10 "$node";
done