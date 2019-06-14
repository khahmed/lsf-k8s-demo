# LSF - K8S demo scripts

1. Setup namespaces : proj-1 , proj-2, proj-3
2. Install webhook to add LSF annotations to pods:
   kubectl apply -n kube-system -f  https://raw.githubusercontent.com/khahmed/admission-webhook-example/master/mutating-webhook/k8s/webhook-server.yaml
3. Add the dashboard.json into Grafana
4. Run scripts for each scenario


## Jenkins setup
 

1. Deploy ICP ibm-jenkins-dev helm chart into each namespace
2. Go to Manage Jenkins-> Configure System -> Cloud -> Kubernetes pod template and configure LSF annotations (eg. queue to target worker pods)
3. Create a Jenkins project (New Item) to do compilation
   - Git repo: https://github.com/antirez/redis.git
   - Execute Shell:
        apt-get update
        apt-get install -y make
        apt-get install -y gcc
        make install
   - Schedule: */5 * * * * 
4. Create copies of the project to generate more pods

