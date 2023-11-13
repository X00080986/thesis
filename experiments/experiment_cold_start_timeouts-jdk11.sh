#!/bin/bash
set -eo pipefail

JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.20.1/libexec/openjdk.jdk/Contents/Home; 
java -version

for i in {1..11}
do

  ################# Invoke JDK 11 Blank Lambda
  ECHO "Invoking JDK 11 Blank Lambda #${i}"
  ################# Invoke JDK 11 Blank Lambda

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/blank-jdk11-lambda-out.json --profile AdministratorAccess-763087020924


  ################# Invoke JDK 11 Blank Provisioned Concurrency
  ECHO "Invoking JDK 11 Blank Provisioned Concurrency #${i}"
  ################# Invoke JDK 11 Blank Provisioned Concurrency

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION:1 out/blank-jdk11-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


  ################# Invoke JDK 11 Blank Snapstart
  ECHO "Invoking JDK 11 Blank Snapstart #${i}"
  ################# Invoke JDK 11 Blank Snapstart

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION:1 out/blank-jdk11-snapstart-out.json --profile AdministratorAccess-763087020924


  ################# Pause Script by Increments of 1 Minute
  ECHO "Pausing script for $(($i * 60)) seconds"
  ################# Pause Script by Increments of 1 Minute
  SLEEP $(($i * 60))

done