#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk11-lambda.zip build/blank-jdk11-lambda-lib.zip
