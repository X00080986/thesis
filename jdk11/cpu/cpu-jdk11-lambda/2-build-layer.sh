#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk11-lambda.zip build/cpu-jdk11-lambda-lib.zip
