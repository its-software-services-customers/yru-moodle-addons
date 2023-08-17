#!/bin/bash

export $(xargs <.env)

cd "02-bootstrap"

helm upgrade . -f values-${ENV}.yaml -n argocd
