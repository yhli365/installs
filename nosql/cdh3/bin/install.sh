#!/usr/bin/env bash
# setup.sh

bin=`dirname "${BASH_SOURCE-$0}"`
bin=`cd "$bin"; pwd`
home=$bin/..

mkdir -p ~/cdh

#env
APP_HOME=/disk/yhli/app
CLOUD_HOME=/disk/yhli/cloud

JAVA_HOME=$APP_HOME/jdk1.6.0_33
HADOOP_HOME=$CLOUD_HOME/hadoop-0.20.2-cdh3u4
HBASE_HOME=$CLOUD_HOME/hbase-0.92.1
HIVE_HOME=$CLOUD_HOME/apache-hive-0.13.1-bin

if [ -d ~/cdh/jdk ]; then
    rm ~/cdh/jdk
fi
if [ -d $JAVA_HOME ]; then
    ln -s $JAVA_HOME ~/cdh/jdk
fi

if [ -d ~/cdh/hadoop ]; then
    rm ~/cdh/hadoop
fi
if [ -d $HADOOP_HOME ]; then
    ln -s $HADOOP_HOME ~/cdh/hadoop
fi

if [ -d ~/cdh/hbase ]; then
    rm ~/cdh/hbase
fi
if [ -d $HBASE_HOME ]; then
    ln -s $HBASE_HOME ~/cdh/hbase
fi

if [ -d ~/cdh/hive ]; then
    rm ~/cdh/hive
fi
if [ -d $HIVE_HOME ]; then
    ln -s $HIVE_HOME ~/cdh/hive
fi

#data
mkdir -p $home/pids

mkdir -p $home/conf/hadoop
mkdir -p $home/logs/hadoop
mkdir -p $home/hadoop

mkdir -p $home/conf/hbase
mkdir -p $home/logs/hbase
mkdir -p $home/hbase

mkdir -p $home/conf/hive
mkdir -p $home/logs/hive
mkdir -p $home/hive

