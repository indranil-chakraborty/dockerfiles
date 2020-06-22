#!/bin/bash
# This script will install all jar files specified in the path below
# to the local repository using the mvn:install command.

# Original Author: Indranil Chakraborty
# Version: 0.1
# Date: 22-Jun-2020

# Upload each file to the repository
for filename in tmp/lib/*.jar; do
    fname=`basename $filename .jar`
    mvn install:install-file -DgroupId=chakraborty -DartifactId=$fname -Dversion=1.0.0 -Dpackaging=jar -Dfile=$filename
done

