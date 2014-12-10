#!/usr/bin/env bash
# install.sh

home=`dirname "${BASH_SOURCE-$0}"`
home=`cd "$home"; pwd`

mkdir -p ~/cdh

#env
APP_HOME=/work/yhli/app
CDH_HOME=/disk/cdh5/app

JAVA_HOME=$APP_HOME/jdk1.7.0_67
HADOOP_HOME=$CDH_HOME/hadoop-2.5.0-cdh5.2.0
HBASE_HOME=$CDH_HOME/hbase-0.98.6-cdh5.2.0
HIVE_HOME=$CDH_HOME/hive-0.13.1-cdh5.2.0
SQOOP_HOME=$CDH_HOME/sqoop-1.4.5-cdh5.2.0
OOZIE_HOME=$CDH_HOME/oozie-4.0.0-cdh5.2.0
SOLR_HOME=$CDH_HOME/solr-4.4.0-cdh5.2.0
HBASE_INDEXER_HOME=$CDH_HOME/hbase-indexer-1.5-cdh5.2.0

if [ -d ~/cdh/data ]; then
    rm ~/cdh/data
fi
ln -s /work/yhli/data/cdh5 ~/cdh/data

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

if [ -d ~/cdh/solr ]; then
    rm ~/cdh/solr
fi
if [ -d $SOLR_HOME ]; then
    ln -s $SOLR_HOME ~/cdh/solr
fi

if [ -d ~/cdh/indexer ]; then
    rm ~/cdh/indexer
fi
if [ -d $HBASE_INDEXER_HOME ]; then
    ln -s $HBASE_INDEXER_HOME ~/cdh/indexer
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

mkdir -p $home/conf/solr
mkdir -p $home/logs/solr
mkdir -p $home/solr

mkdir -p $home/conf/indexer
mkdir -p $home/logs/indexer
mkdir -p $home/indexer
