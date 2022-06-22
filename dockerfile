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

CMD cd /root/JourneyHostingD-MC && \
    ./startup.sh