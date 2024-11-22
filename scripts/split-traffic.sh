#!/bin/sh

./routing.sh --svc-main $SVC_OLD:$WEIGHT_OLD \
            --svc-alter $SVC_NEW:$WEIGHT_NEW \
            --namespace $NAMESPACE \
            --route $ROUTE_NAME \
            --host  $HOST \
            --port  $PORT 
