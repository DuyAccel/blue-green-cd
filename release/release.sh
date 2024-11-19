#!/bin/sh

VERSION='new/cpu-high'

sed -i -e "s|'{{VERSION}}'|${VERSION}|" overlays/production/alert/prometheus-rule.yaml

kubectl apply -k overlays/production

