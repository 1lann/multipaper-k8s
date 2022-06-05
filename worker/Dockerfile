FROM debian:latest
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    openjdk-17-jdk \
    screen
RUN mkdir /worker && curl https://multipaper.io/api/v2/projects/multipaper/versions/1.18.2/builds/65/downloads/multipaper-1.18.2-65.jar -o /worker/multipaper.jar
COPY eula.txt server.properties run.sh /worker/
RUN chmod +x /worker/run.sh

WORKDIR /worker
EXPOSE 25565/tcp

CMD ["/bin/bash", "/worker/run.sh"]

# CMD screen -S multipaper sh -c java \
#     -DbungeecordName=$BUNGEECORD_NAME \
#     -DmultipaperMasterAddress=$MULTIPAPER_MASTER_ADDRESS \
#     -Dproperties.view-distance=16 \
#     -Dpaper.settings.proxy-protocol=true \
#     -Dspigot.world-settings.default.entity-tracking-range.players=128 \
#     -jar /worker/multipaper.jar
