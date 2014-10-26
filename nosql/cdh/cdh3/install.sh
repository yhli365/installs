#!/usr/bin/env bash
# setup.sh

home=`dirname "${BASH_SOURCE-$0}"`
home=`cd "$home"; pwd`

mkdir -p ~/cdh

#env
APP_HOME=/disk/yhli/app
CLOUD_HOME=/disk/yhli/cloud

JAVA_HOME=$APP_HOME/jdk1.6.0_33
HADOOP_HOME=$CLOUD_HOME/hadoop-0.20.2-cdh3u4
HBASE_HOME=$CLOUD_HOME/hbase-0.92.1
HIVE_HOME=$CLOUD_HOME/apache-hive-0.13.1-bin
SQOOP_HOME=$CLOUD_HOME/sqoop-1.4.5.bin__hadoop-0.20
OOZIE_HOME=$CLOUD_HOME/oozie-2.3.2-cdh3u6

if [ -d ~/cdh/data ]; then
    rm ~/cdh/data
fi
ln -s /disk/yhli/data/cdh3 ~/cdh/data

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

if [ -d ~/cdh/sqoop ]; then
    rm ~/cdh/sqoop
fi
if [ -d $SQOOP_HOME ]; then
    ln -s $SQOOP_HOME ~/cdh/sqoop
fi

if [ -d ~/cdh/oozie ]; then
    rm ~/cdh/oozie
fi
if [ -d $OOZIE_HOME ]; then
    ln -s $OOZIE_HOME ~/cdh/oozie
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

mkdir -p $home/conf/sqoop
mkdir -p $home/logs/sqoop
mkdir -p $home/sqoop

mkdir -p $home/conf/oozie
mkdir -p $home/logs/oozie
mkdir -p $home/oozie

