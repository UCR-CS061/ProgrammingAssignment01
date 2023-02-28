FROM ubuntu:latest

RUN apt update && apt install -y git wget unzip openjdk-11-jre

ENV VNC_RESOLUTION="1920x1200x16" \
    VNC_DPI="96"

RUN wget https://github.com/ucrdrk/lc3tools/releases/download/v2.0.1.cs061/LC3Tools-2.0.2.AppImage
RUN chmod a+x LC3Tools-2.0.2.AppImage
RUN ./LC3Tools-2.0.2.AppImage --appimage-extract
RUN mv squashfs-root /usr/local/lc3tools

RUN wget https://github.com/hneemann/Digital/releases/latest/download/Digital.zip
RUN unzip Digital.zip
RUN mv Digital /usr/local/Digital
RUN export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dsun.java2d.xrender=false"

COPY menu /root/.fluxbox/menu
