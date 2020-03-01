#!/usr/bin/bash

bin/kafka-server-stop.sh
bin/zookeeper-server-stop.sh

connect-standalone.sh  connect-standalone.properties connect-file-source.properties connect-file-sink.properties