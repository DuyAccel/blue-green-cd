#!/bin/sh

./routing.sh --svc-main $SVC_OLD:$WEIGHT_OLD \
            --namespace $NAMESPACE \
            --route $ROUTE_NAME \
            --host  $HOST \
            --port  $PORT 

kubectl delete -k release/overlays/production
