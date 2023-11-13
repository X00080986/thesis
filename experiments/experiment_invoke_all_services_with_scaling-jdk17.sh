#!/bin/bash
set -eo pipefail

JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.8.1/libexec/openjdk.jdk/Contents/Home; 
java -version

for i in {1..50}
do

  ################# Invoke JDK 17 Blank Lambda
  ECHO "Invoking JDK 17 Blank Lambda #${i}"
  ################# Invoke JDK 17 Blank Lambda


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION out/blank-jdk17-lambda-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 Blank Provisioned Concurrency
  ECHO "Invoking JDK 17 Blank Provisioned Concurrency #${i}"
  ################# Invoke JDK 17 Blank Provisioned Concurrency


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/blank-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 Blank Snapstart
  ECHO "Invoking JDK 17 Blank Snapstart #${i}"
  ################# Invoke JDK 17 Blank Snapstart


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/blank-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 CPU Lambda
  ECHO "Invoking JDK 17 CPU Lambda #${i}"
  ################# Invoke JDK 17 CPU Lambda


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION out/cpu-jdk17-lambda-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 CPU Provisioned Concurrency
  ECHO "Invoking JDK 17 CPU Provisioned Concurrency #${i}"
  ################# Invoke JDK 17 CPU Provisioned Concurrency


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/cpu-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 CPU Snapstart
  ECHO "Invoking JDK 17 CPU Snapstart #${i}"
  ################# Invoke JDK 17 CPU Snapstart


  FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
  aws lambda invoke --function-name $FUNCTION:1 out/cpu-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924


done



for i in {1..50}
do

  ################# Invoke JDK 17 IO Lambda
  ECHO "Invoking JDK 17 IO Lambda #${i}"
  ################# Invoke JDK 17 IO Lambda


  FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://jdk17/io/io-jdk17-lambda/events/dynamodb-record.json' out/io-jdk17-lambda-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 IO Provisioned Concurrency
  ECHO "Invoking JDK 17 IO Provisioned Concurrency #${i}"
  ################# Invoke JDK 17 IO Provisioned Concurrency


  FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION:1 --payload 'file://jdk17/io/io-jdk17-provisioned-concurrency/events/dynamodb-record.json' out/io-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924

done



for i in {1..50}
do

  ################# Invoke JDK 17 IO Snapstart
  ECHO "Invoking JDK 17 IO Snapstart #${i}"
  ################# Invoke JDK 17 IO Snapstart


  FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
  aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION:1 --payload 'file://jdk17/io/io-jdk17-snapstart/events/dynamodb-record.json' out/io-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924

done