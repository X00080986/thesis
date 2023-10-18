#!/bin/bash
set -eo pipefail
FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)

while true; do
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out.json --profile AdministratorAccess-763087020924
  cat out.json
  echo ""
  sleep 2
done
