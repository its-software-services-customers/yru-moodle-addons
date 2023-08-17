#!/bin/bash

export $(xargs <.env)

cd "01-init"

helm dependency update
#helm install . -f values-${ENV}.yaml -n argocd --generate-name --create-namespace
helm upgrade -i r1 . -f values-${ENV}.yaml -n argocd --create-namespace