from cgitb import reset
import kafka
message = b'Hello World!'

producer = kafka.KafkaProducer(bootstrap_servers='localhost:9094')

future = producer.send('my-topic', message)
result = future.get(timeout=10)
print(f'Message sent - {message}')