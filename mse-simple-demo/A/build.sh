#!/bin/sh
set -e

cd "$(dirname "$0")"

export JAVA_17_HOME=`/usr/libexec/java_home -v 17`
export JAVA_HOME=$JAVA_17_HOME

mvn clean package
docker build . -t registry.cn-hangzhou.aliyuncs.com/yuzhi-1998/spring-cloud-a:1.0.0 --platform linux/amd64
docker push registry.cn-hangzhou.aliyuncs.com/yuzhi-1998/spring-cloud-a:1.0.0
