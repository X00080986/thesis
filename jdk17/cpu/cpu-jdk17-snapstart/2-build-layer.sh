#!/bin/bash
set -eo pipefail
gradle -q packageLibs
mv build/distributions/cpu-jdk17-snapstart.zip build/cpu-jdk17-snapstart-lib.zip
