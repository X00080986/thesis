#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk17-lambda.zip build/blank-jdk17-lambda-lib.zip