FROM tiger0421/docker-opencv-cuda:4.1.1

WORKDIR /root
RUN git clone https://github.com/AlexeyAB/darknet.git

WORKDIR /root/darknet/build-release
RUN cmake .. && \
    make && \
    make install

