FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y python3-pip
RUN pip3 install selenium
RUN pip3 install webdriver-manager

# install chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get install ./google-chrome-stable_current_amd64.deb

# install chromedriver and place it in path
# RUN apt-get install -y unzip xvfb libxi6 libgconf-2-4
# RUN apt-get update
# RUN apt-get -y install google-chrome-stable
# RUn wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
# RUN unzip chromedriver_linux64.zip
# RUN  mv chromedriver /usr/bin/chromedriver
# RUN chmod +x /usr/bin/chromedriver

COPY run.py run.py

CMD ["python3", "run.py"]
