#!/usr/bin/env bash
# uninstall.sh

if [ -d ~/cdh/data ]; then
    rm ~/cdh/data
fi

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

if [ -d ~/cdh/sqoop ]; then
    rm ~/cdh/sqoop
fi

if [ -d ~/cdh/oozie ]; then
    rm ~/cdh/oozie
fi
