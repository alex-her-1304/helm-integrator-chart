#!/bin/bash
aws_access_key_id="TOKEN"
aws_secret_access_key="TOKEN"
aws_session_token="TOKEN"

kubectl create secret generic aws-creds \
  --from-literal=aws_access_key_id="$aws_access_key_id" \
  --from-literal=aws_secret_access_key="$aws_secret_access_key" \
  --from-literal=aws_session_token="$aws_session_token" \
  --namespace prod

# delete from bash env 
unset aws_access_key_id
unset aws_secret_access_key
unset aws_session_token

# get the secret
kubectl get secret aws-creds -n prod -o yaml
