#!/bin/bash

export $(xargs <.env)

cd "04-monitoring"

helm dependency update
helm upgrade -i monitoring . -f values-${ENV}.yaml -n monitoring
