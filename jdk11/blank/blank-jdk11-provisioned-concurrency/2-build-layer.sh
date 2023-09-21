#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk11-provisioned-concurrency.zip build/blank-jdk11-provisioned-concurrency-lib.zip
