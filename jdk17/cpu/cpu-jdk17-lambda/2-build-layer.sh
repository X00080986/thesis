#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk17-lambda.zip build/cpu-jdk17-lambda-lib.zip