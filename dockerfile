#JourneyHosting Dockerfile Minecraft szerver

FROM ubuntu:20.04
VOLUME ["/data"]
WORKDIR /data

RUN apt update -y && apt install git -y && cd /root && git clone https://github.com/ItsMeSudo/JourneyHostingD-MC.git && cd JourneyHostingD-MC && chmod u+x * && ./setup.sh

