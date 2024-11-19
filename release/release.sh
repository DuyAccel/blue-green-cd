#!/bin/sh

VERSION='new/crash-backoff'

sed -i -e "s|'{{VERSION}}'|${VERSION}|" overlays/production/alert/prometheus-rule.yaml

kubectl apply -k overlays/production

