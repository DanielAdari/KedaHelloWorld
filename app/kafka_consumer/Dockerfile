FROM python:3.8

WORKDIR /code

COPY src/requirements.txt /code/src/
RUN pip install -r src/requirements.txt

COPY . /code/

ENTRYPOINT []
CMD ["python3", "src/kafka_consumer.py"]