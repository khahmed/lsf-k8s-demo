# LSF - K8S demo scripts

1. Setup namespaces : proj-1 , proj-2, proj-3
2. Install webhook to add LSF annotations to pods:
   kubectl apply -f  https://raw.githubusercontent.com/khahmed/admission-webhook-example/master/mutating-webhook/k8s/webhook-server.yaml
3. Add the dashboard.json into Grafana
4. Run scripts for each scenario


