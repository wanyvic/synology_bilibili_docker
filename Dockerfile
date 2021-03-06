FROM ubuntu:20.04
MAINTAINER author  "873040807@qq.com"
RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list && apt-get clean
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install bilili
CMD ["bilili"]
