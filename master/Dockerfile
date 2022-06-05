FROM debian:latest
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    openjdk-17-jdk \
    screen
RUN mkdir /master && curl https://multipaper.io/api/v2/projects/multipaper/versions/1.18.2/builds/65/downloads/MultiPaper-Master-2.8.4-all.jar -o /master/multipaper-master.jar
COPY run.sh /master/
RUN chmod +x /master/run.sh

EXPOSE 35353/tcp
EXPOSE 25565/tcp

VOLUME /master/server
WORKDIR /master/server

CMD ["/bin/bash", "/master/run.sh"]
