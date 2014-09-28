#!/usr/bin/env bash
# setup.sh

bin=`dirname "${BASH_SOURCE-$0}"`
bin=`cd "$bin"; pwd`
home=$bin/..

mkdir -p ~/cdh

#env
if [ -d ~/cdh/jdk ]; then
    rm ~/cdh/jdk
fi

if [ -d ~/cdh/hadoop ]; then
    rm ~/cdh/hadoop
fi

if [ -d ~/cdh/hbase ]; then
    rm ~/cdh/hbase
fi

if [ -d ~/cdh/hive ]; then
    rm ~/cdh/hive
fi

if [ -d ~/cdh/data ]; then
    rm ~/cdh/data
fi
