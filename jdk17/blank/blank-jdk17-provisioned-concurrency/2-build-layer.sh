#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk17-provisioned-concurrency.zip build/blank-jdk17-provisioned-concurrency-lib.zip
