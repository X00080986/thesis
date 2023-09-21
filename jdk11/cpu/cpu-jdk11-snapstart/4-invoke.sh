#!/bin/bash
set -eo pipefail
FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)

while true; do
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload file://event.json out.json --profile AdministratorAccess-763087020924
  cat out.json
  echo ""
  sleep 2
done
