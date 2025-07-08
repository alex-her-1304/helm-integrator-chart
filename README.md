# helm-integrator-chart
## Configure AWS using Secret:
customize and run: `example_create-auth-aws-creds.sh`

## Install argo and run this commands:
```bash
argocd app create external-secrets --repo https://github.com/alex-her-1304/helm-integrator-argo.git --path applications/infraestructure --dest-server https://kubernetes.default.svc --dest-namespace external-secrets

argocd app create app --repo https://github.com/alex-her-1304/helm-integrator-argo.git --path applications/prod --dest-server https://kubernetes.default.svc --dest-namespace prod
```