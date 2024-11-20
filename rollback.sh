#!/bin/sh

NEW=$1
OLD=$2


# delete green
cd ../../${NEW}/release
kubectl delete -k overlays/production
