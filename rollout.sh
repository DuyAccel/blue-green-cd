#!/bin/sh

OLD=$1

# delete blue
cd ../${OLD}/release
kubectl delete -k overlays/production
