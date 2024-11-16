#!/bin/sh

# delete alerts
cat alert/* | kubectl delete -f -

# route traffic
cat overlays/green/rollout/* | kubectl apply -f -

# delete blue
kubectl delete -k overlays/blue
