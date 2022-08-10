FROM python:3.8

WORKDIR /code

COPY python/requirements.txt /code/python/
RUN pip install -r python/requirements.txt

COPY . /code/

ENTRYPOINT []
CMD ["python", "kafka_consumer.py"]