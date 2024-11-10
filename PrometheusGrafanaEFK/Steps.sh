cd /usr/local/bin
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 777 get_helm.sh
./get_helm.sh
---
kubectl create namespace prom
---
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack -n prom
---
kubectl get services -n prom
---
kubectl port-forward pod/prometheus-prometheus-kube-prometheus-prometheus-0 9090:9090 -n prom
---
kubectl port-forward pod/prometheus-grafana-57b76f9754-44cx7 3000:3000 -n prom
---
kubectl create deployment test-app --image=nginx --replicas=6
---
kubectl create namespace kube-logging
---
kubectl port-forward service/kibana 5601:5601 -n kube-logging