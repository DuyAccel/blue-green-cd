#!/bin/sh

#NEW_VERSION="$NEW_VERSION"
#NEW_DEPLOY="$NEW_DEPLOY"
#OLD_VERSION="$OLD_VERSION"
#OLD_DEPLOY="$OLD_DEPLOY"
export $(cat .env | xargs)

sed -i --e "s|{{ .NewVersion }}|$NEW_VERSION|" \
  -e "s|{{ .OldVersion }}|$OLD_VERSION|" \
  -e "s|{{ .NewDeploy }}|$NEW_DEPLOY|" \
  -e "s|{{ .OldDeploy }}|$OLD_DEPLOY|" \
  release/overlays/production/alert/prometheus-rule.yaml

kubectl apply -k release/overlays/production
