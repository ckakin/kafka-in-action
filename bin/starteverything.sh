zookeeper-server-start.sh ../config/zookeeper.properties

sleep 20
kafka-server-start.sh ../config/server0.properties
kafka-server-start.sh ../config/server1.properties
kafka-server-start.sh ../config/server2.properties
