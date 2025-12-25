# https://endoflife.date/debian
FROM debian:13.2

# https://mirrors.bfsu.edu.cn/help/debian/
ADD debian.sources /etc/apt/sources.list.d/debian.sources

RUN apt update
RUN apt-get --assume-yes install busybox

RUN dpkg --add-architecture i386
RUN apt update
RUN apt-get --assume-yes install libc6:i386 libstdc++6:i386
