FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
WORKDIR /home
COPY requirements.txt /home/requirements.txtRUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
