FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN python3 -m pip install --upgrade pip
RUN curl -fssL https://deb.nodesource.com/setup_17.x | sudo -E bash - && sudo apt-get install nodejs -y && npm i -g npm
COPY . /app/
WORKDIR /app/
RUN pip3 install -U -r requirements.txt
CMD ["bash","start.sh"]
