FROM tiger0421/docker-opencv-cuda:4.1.1

WORKDIR /root
RUN git clone https://github.com/AlexeyAB/darknet.git && \
    mkdir /root/darknet/build-release

COPY docker-entrypoint.sh /tmp
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
CMD ["/bin/bash"]

