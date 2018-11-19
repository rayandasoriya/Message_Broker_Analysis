echo "Testing Kafka" >log.txt

sh bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test5

for throughputValue in 1000 10000 100000 1000000 10000000 100000000 1000000000
do
	for numRecordsValue in 1000 10000 100000 1000000 10000000 100000000 1000000000
	do 
		echo "Throughput Value :$throughputValue Num-Records : $numRecordsValue"
		echo "\nThroughput Value $throughputValue Num-Records: $numRecordsValue" >>log.txt
		sh bin/kafka-producer-perf-test.sh --topic test5  --throughput $throughputValue --num-records $numRecordsValue --record-size 10 --producer.config config/producer.properties >>log.txt
	done
done
