#!/bin/sh

java -jar ./checkstyle.jar -c /checkstyle/tubs_checks.xml $(find -name '*.java')