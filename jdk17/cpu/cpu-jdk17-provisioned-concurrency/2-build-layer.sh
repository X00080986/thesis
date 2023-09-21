#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk17-provisioned-concurrency.zip build/cpu-jdk17-provisioned-concurrency-lib.zip
