FROM ubuntu:latest

RUN apt update && apt install -y git wget fuse libfuse2

RUN wget https://github.com/ucrdrk/lc3tools/releases/download/v2.0.1.cs061/LC3Tools-2.0.2.AppImage
RUN chmod a+x LC3Tools-2.0.2.AppImage
RUN mv LC3Tools-2.0.2.AppImage /usr/local/bin
