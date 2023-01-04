FROM ubuntu:latest

RUN apt update && apt install -y git wget

ENV VNC_RESOLUTION="1920x1200x16" \
    VNC_DPI="96"

RUN wget https://github.com/ucrdrk/lc3tools/releases/download/v2.0.1.cs061/LC3Tools-2.0.2.AppImage
RUN chmod a+x LC3Tools-2.0.2.AppImage
RUN ./LC3Tools-2.0.2.AppImage --appimage-extract
RUN mv squashfs-root /usr/local/lc3tools
COPY menu /root/.fluxbox/menu
