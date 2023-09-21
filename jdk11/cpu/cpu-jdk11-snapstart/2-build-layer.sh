#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk11-snapstart.zip build/cpu-jdk11-snapstart-lib.zip
