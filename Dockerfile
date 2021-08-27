FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
WWORKDIR /home
COPY requirements.txt /home/requirements.txtRUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
