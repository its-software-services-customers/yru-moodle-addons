#!/bin/bash

export $(xargs <.env)

cd "01-init"

helm dependency update
helm install . -f values-${ENV}.yaml -n argocd --generate-name
