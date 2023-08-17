#!/bin/bash

export $(xargs <../.env)

helm dependency update
helm install . -f values-${ENV}.yaml -n argocd --generate-name
