#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk11-snapstart.zip build/blank-jdk11-snapstart-lib.zip
