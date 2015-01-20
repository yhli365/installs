#!/bin/bash

base_dir=$(dirname $0)

# create logs directory
LOG_DIR=$base_dir/logs
if [ ! -d $LOG_DIR ]; then
	mkdir $LOG_DIR
fi

cd $base_dir
java -Xms512M -Xmx512M -Xss1024K -XX:PermSize=256m -XX:MaxPermSize=512m \
  -cp KafkaOffsetMonitor-assembly-0.2.0.jar \
  com.quantifind.kafka.offsetapp.OffsetGetterWeb \
  --zk localhost:2181 \
  --port 8086 \
  --refresh 10.seconds \
  --retain 7.days 1>logs/offset-stdout.log 2>logs/offset-stderr.log &
