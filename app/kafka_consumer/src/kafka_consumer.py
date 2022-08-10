import time
import kafka

consumer = kafka.KafkaConsumer(bootstrap_servers='localhost:9094')

consumer.subscribe(['test-topic'])

for message in consumer:
    print(f"Received message: {message.value}")
    time.sleep(1)