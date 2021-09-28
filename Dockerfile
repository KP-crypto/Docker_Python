FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-pip

COPY ./Demo/run.py run.py

CMD ["python3", "C:/Users/ketan.2110850/PycharmProjects/Demo/run.py"]
