#!/bin/sh

cd /root/darknet/build-release && \
cmake .. && \
make && \
make install

