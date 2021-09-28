FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install -r requirements.txt

# install chrome
RUN apt-get update -y && \
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
  dpkg -i google-chrome-stable_current_amd64.deb; apt-get -fy install

## install chromedriver and place it in path
#RUN wget https://chromedriver.storage.googleapis.com/2.42/chromedriver_linux64.zip && \
#    unzip chromedriver_linux64.zip && \
#    mv chromedriver /usr/local/bin/

COPY run.py run.py

CMD ["python3", "run.py"]
