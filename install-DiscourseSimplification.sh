#!/bin/sh
VERSION=8.3.0-beta.1

set -ex
wget https://github.com/Lambda-3/DiscourseSimplification/archive/v$VERSION.tar.gz -O DiscourseSimplification.tar.gz
tar xfa DiscourseSimplification.tar.gz
cd DiscourseSimplification-$VERSION && mvn install -B -DskipTests && cd ..
rm -f DiscourseSimplification.tar.gz
rm -rf DiscourseSimplification-$VERSION 
