#!/bin/sh

VERSION='new/code-404'

sed -i -e "s|{{VERSION}}|${VERSION}|" overlays/production/alert/prometheus-rule.yaml

kubectl apply -k overlays/production

