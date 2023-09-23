#!/bin/bash
set -eo pipefail
FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk11-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
PAYLOAD='file://events/dynamodb-record.json'

aws lambda invoke --cli-binary-format raw-in-base64-out --profile AdministratorAccess-763087020924 --function-name $FUNCTION --payload $PAYLOAD out.json
cat out.json