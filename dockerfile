#JourneyHosting Dockerfile Minecraft szerver

FROM ubuntu:20.04
VOLUME ["/data"]
WORKDIR /data
ENV TZ=Europe/Budapest
ARG DEBIAN_FRONTEND=noninteractive
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update -y && \
    apt install git wget -y && \
    cd /root && \
    git clone https://github.com/ItsMeSudo/JourneyHostingD-MC.git && \
    cd JourneyHostingD-MC && chmod +x * && \
    ./setup.sh

CMD cd /root/JourneyHostingD-MC && \
    ./startup.sh