FROM ubuntu:latest
RUN mkdir -p /cicd-zone
WORKDIR /cicd-zone
COPY . /cicd-zone
RUN apt update && apt upgrade -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install python3.10 -y
RUN apt install python3-pip -y
RUN pip install flask
EXPOSE 80
EXPOSE 8080
ENTRYPOINT [\"python3\" , \"cicd_was.py\"]
