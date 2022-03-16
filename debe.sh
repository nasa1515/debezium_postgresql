#!/bin/bash


/home/kafka/kafka_2.12-3.1.0/bin/connect-distributed.sh /home/debezium/connect-distributed.properties > /dev/null 2>&1 &

sleep 15

cd /home/debezium
curl -X POST -H "Content-Type: application/json" --data @pg-source-connector.json http://localhost:8083/connectors

