#!/bin/bash
set -eo pipefail

JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.8.1/libexec/openjdk.jdk/Contents/Home; 
java -version

for i in {1..11}
do

  ################# Invoke JDK 17 Blank Lambda
  ECHO "Invoking JDK 17 Blank Lambda #${i}"
  ################# Invoke JDK 17 Blank Lambda

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION out/blank-jdk17-lambda-out.json --profile AdministratorAccess-763087020924


  ################# Invoke JDK 17 Blank Provisioned Concurrency
  ECHO "Invoking JDK 17 Blank Provisioned Concurrency #${i}"
  ################# Invoke JDK 17 Blank Provisioned Concurrency

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/blank-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


  ################# Invoke JDK 17 Blank Snapstart
  ECHO "Invoking JDK 17 Blank Snapstart #${i}"
  ################# Invoke JDK 17 Blank Snapstart

  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/blank-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924

  ################# Pause Script by Increments of 1 Minute
  ECHO "Pausing script for $(($i * 60)) seconds"
  ################# Pause Script by Increments of 1 Minute
  SLEEP $(($i * 60))

done