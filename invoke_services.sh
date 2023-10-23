#!/bin/bash
set -eo pipefail


JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.20.1/libexec/openjdk.jdk/Contents/Home; 
java -version

################# Invoke JDK 11 Blank Lambda
ECHO "Invoking JDK 11 Blank Lambda"
################# Invoke JDK 11 Blank Lambda


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/blank-jdk11-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 Blank Provisioned Concurrency
ECHO "Invoking JDK 11 Provisioned Concurrency"
################# Invoke JDK 11 Blank Provisioned Concurrency


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/blank-jdk11-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 Blank Snapstart
ECHO "Invoking JDK 11 Blank Snapstart"
################# Invoke JDK 11 Blank Snapstart


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/blank-jdk11-snapstart-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 CPU Lambda
ECHO "Invoking JDK 11 CPU Lambda"
################# Invoke JDK 11 CPU Lambda


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk11-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/cpu-jdk11-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 CPU Provisioned Concurrency
ECHO "Invoking JDK 11 CPU Provisioned Concurrency"
################# Invoke JDK 11 CPU Provisioned Concurrency


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk11-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/cpu-jdk11-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 CPU Snapstart
ECHO "Invoking JDK 11 CPU Snapstart"
################# Invoke JDK 11 CPU Snapstart


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION out/cpu-jdk11-snapstart-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 IO Lambda
ECHO "Invoking JDK 11 IO Lambda"
################# Invoke JDK 11 IO Lambda


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk11-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk11-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 IO Provisioned Concurrency
ECHO "Invoking JDK 11 IO Provisioned Concurrency"
################# Invoke JDK 11 IO Provisioned Concurrency


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk11-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk11-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 11 IO Snapstart
ECHO "Invoking JDK 11 IO Snapstart"
################# Invoke JDK 11 IO Snapstart


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk11-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk11-snapstart-out.json --profile AdministratorAccess-763087020924





JAVA_HOME=/opt/homebrew/Cellar/openjdk@17/17.0.8.1/libexec/openjdk.jdk/Contents/Home; 
java -version

################# Invoke JDK 17 Blank Lambda
ECHO "Invoking JDK 17 Blank Lambda"
################# Invoke JDK 17 Blank Lambda


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/blank-jdk17-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 Blank Provisioned Concurrency
ECHO "Invoking JDK 17 Blank Provisioned Concurrency"
################# Invoke JDK 17 Blank Provisioned Concurrency


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/blank-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 Blank Snapstart
ECHO "Invoking JDK 17 Blank Snapstart"
################# Invoke JDK 17 Blank Snapstart


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name blank-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/blank-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 CPU Lambda
ECHO "Invoking JDK 17 CPU Lambda"
################# Invoke JDK 17 CPU Lambda


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/cpu-jdk17-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 CPU Provisioned Concurrency
ECHO "Invoking JDK 17 CPU Provisioned Concurrency"
################# Invoke JDK 17 CPU Provisioned Concurrency


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/cpu-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 CPU Snapstart
ECHO "Invoking JDK 17 CPU Snapstart"
################# Invoke JDK 17 CPU Snapstart


FUNCTION=$(aws cloudformation describe-stack-resource --stack-name cpu-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text --profile AdministratorAccess-763087020924)
aws lambda invoke --function-name $FUNCTION out/cpu-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 IO Lambda
ECHO "Invoking JDK 17 IO Lambda"
################# Invoke JDK 17 IO Lambda


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-lambda --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk17-lambda-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 IO Provisioned Concurrency
ECHO "Invoking JDK 17 IO Provisioned Concurrency"
################# Invoke JDK 17 IO Provisioned Concurrency


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-provisioned-concurrency --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk17-provisioned-concurrency-out.json --profile AdministratorAccess-763087020924


################# Invoke JDK 17 IO Snapstart
ECHO "Invoking JDK 17 IO Snapstart"
################# Invoke JDK 17 IO Snapstart


FUNCTION=$(aws cloudformation --profile AdministratorAccess-763087020924 describe-stack-resource --stack-name io-jdk17-snapstart --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)
aws lambda invoke --cli-binary-format raw-in-base64-out --function-name $FUNCTION --payload 'file://events/dynamodb-record.json' out/io-jdk17-snapstart-out.json --profile AdministratorAccess-763087020924
