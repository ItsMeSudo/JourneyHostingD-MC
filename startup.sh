#!/bin/bash
normal_startup() {
    echo "A mappa nem üres, szerver indítás folyamatban."
        cd /data && \
        java -Xms1G -Xmx1G -jar server.jar nogui
}

installnstartup() {
    echo "A mappa üres, szerver telepítás folyamatban."
        cp /root/JourneyHostingD-MC/server.jar /data && \
        cd /data && \
        echo eula=true > eula.txt && \
        chmod a+x server.jar
    echo "A szerver telepítése kész van, szerver indítás folyamatban."
        cd /data && \
        java -Xms1G -Xmx1G -jar server.jar nogui
}

if find /data -mindepth 1 -maxdepth 1 | read; then
   normal_startup
else
   installnstartup
fi