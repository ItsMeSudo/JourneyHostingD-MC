#JourneyHosting Dockerfile Minecraft szerver

FROM ubuntu:20.04
VOLUME ["/data"]
WORKDIR /data

RUN apt update -y && \
    apt install git wget -y && \
    cd /root && \
    git clone https://github.com/ItsMeSudo/JourneyHostingD-MC.git && \
    cd JourneyHostingD-MC && chmod +x * && \
    ./setup.sh

CMD cd /data && \
    java -Xms1G -Xmx1G -jar server.jar nogui
