FROM tiger0421/docker-opencv-cuda:4.1.1

RUN apt update && \
    apt install -y --no-install-recommends \
        vim \
        libcanberra-gtk-module \
    && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root
RUN git clone https://github.com/AlexeyAB/darknet.git && \
    mkdir /root/darknet/build-release

COPY docker-entrypoint.sh /tmp
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
CMD ["/bin/bash"]

