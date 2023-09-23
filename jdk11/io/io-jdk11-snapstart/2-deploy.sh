#!/bin/bash
set -eo pipefail
ARTIFACT_BUCKET=$(cat bucket-name.txt)
TEMPLATE=template.yml
gradle build -i
aws cloudformation package --profile AdministratorAccess-763087020924 --template-file $TEMPLATE --s3-bucket $ARTIFACT_BUCKET --output-template-file out.yml
aws cloudformation deploy --profile AdministratorAccess-763087020924 --template-file out.yml --stack-name io-jdk11-snapstart --capabilities CAPABILITY_NAMED_IAM
