FROM debian:12

ENV DEBIAN_FRONTEND noninteractive
ENV DISPLAY :1
WORKDIR /app
RUN apt update
RUN apt -y install xserver-xorg-video-dummy x11-apps
RUN apt -y install webhttrack tk
CMD ["webhttrack", "--port 8080"]
EXPOSE 8080 
