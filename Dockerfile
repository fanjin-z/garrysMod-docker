FROM ubuntu:18.04
LABEL maintainer="Fanjin Zeng <fjzeng@outlook.com>"

WORKDIR /root
RUN apt-get update && apt-get install -y lib32gcc1 lib32stdc++6 lib32tinfo5 wget
RUN wget -qO- "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"| tar xzvf -

RUN ./steamcmd.sh +login anonymous +force_install_dir ./garrysmod/ +app_update 4020 validate +quit
# Install CS:S server for necessary textures
RUN ./steamcmd.sh +login anonymous +force_install_dir ./css/ +app_update 232330 validate +quit
EXPOSE 27015

ADD cfg/* garrysmod/garrysmod/cfg/
RUN apt-get remove -y wget && apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
