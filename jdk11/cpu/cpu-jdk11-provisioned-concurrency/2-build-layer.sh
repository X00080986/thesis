#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk11-provisioned-concurrency.zip build/cpu-jdk11-provisioned-concurrency-lib.zip
