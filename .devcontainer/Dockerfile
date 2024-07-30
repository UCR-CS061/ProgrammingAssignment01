FROM mcr.microsoft.com/devcontainers/base:ubuntu

RUN apt update && apt install -y git wget unzip git openjdk-11-jre iverilog

ENV VNC_RESOLUTION="1920x1200x16" \
    VNC_DPI="96"

RUN wget https://github.com/chiragsakhuja/lc3tools/releases/download/v2.0.2/LC3Tools-2.0.2.AppImage
RUN chmod a+x LC3Tools-2.0.2.AppImage
RUN ./LC3Tools-2.0.2.AppImage --appimage-extract
RUN mv squashfs-root /usr/local/lc3tools

RUN wget https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
RUN unzip Digital.zip
RUN mv Digital /usr/local/Digital
COPY Digital.sh /usr/local/Digital

RUN mkdir /cs061
RUN git clone https://github.com/ucrdrk/LC3_realized.git
RUN mv LC3_realized /cs061
RUN git clone https://github.com/ucrdrk/cs061-digital-examples.git
RUN mv cs061-digital-examples /cs061

COPY menu /root/.fluxbox/menu
