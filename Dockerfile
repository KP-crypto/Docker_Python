FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-pip
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# install chrome
#RUN apt-get install wget
RUN apt-get install -y wget && \
    wget -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - && \
    echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list && \
    apt-get update && \
    apt-get install -y google-chrome-stable

# install chromedriver and place it in path
# RUN apt-get install -y unzip xvfb libxi6 libgconf-2-4
# RUN apt-get update
# RUN apt-get -y install google-chrome-stable
# RUn wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
# RUN unzip chromedriver_linux64.zip
# RUN  mv chromedriver /usr/bin/chromedriver
# RUN chmod +x /usr/bin/chromedriver

COPY . .

CMD ["python3", "run.py"]
