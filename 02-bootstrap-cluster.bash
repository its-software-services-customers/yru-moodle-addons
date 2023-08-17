#!/bin/bash

export $(xargs <.env)

cd "02-bootstrap"
helm upgrade -i r1 .  -f values-${ENV}.yaml -n argocd
