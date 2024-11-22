#!/bin/sh

OLD=$1


# delete green
cd release
kubectl delete -k overlays/production
