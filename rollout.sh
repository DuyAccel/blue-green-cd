#!/bin/sh

NEW=$1
OLD=$2

# delete blue
cd ../../${OLD}/release
kubectl delete -k overlays/production
