FROM ubuntu:latest
MAINTAINER Mr.Rebel
LABEL version="777"
RUN apt-get update && \
    apt-get install -y python3
COPY hello.py /home/hello.py
ENV PERSON_NAME="Denis Sivolowski"
WORKDIR /home
ENTRYPOINT ["/usr/bin/python3","./hello.py"]
