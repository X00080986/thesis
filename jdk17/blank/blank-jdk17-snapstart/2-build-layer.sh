#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/blank-jdk17-snapstart.zip build/blank-jdk17-snapstart-lib.zip
