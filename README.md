# docker-YOLOv4-cuda
This container is built for Compute Capability=7.5.
If your GPU Compute Capability is not 7.5, build OpenCV container.
https://github.com/tiger0421/docker-opencv-cuda

# Suport
- melodic

# Usage
- Download weights  
see [How to evaluate FPS of YOLOv4 on GPU](https://github.com/AlexeyAB/darknet#how-to-evaluate-fps-of-yolov4-on-gpu)

- Image
```
$ darknet.exe detector test cfg/coco.data yolov4.cfg yolov4.weights -ext_output dog.jpg
```
see [How to use on the command line](https://github.com/AlexeyAB/darknet#how-to-use-on-the-command-line)

- Movie
```
$ darknet.exe detector demo cfg/coco.data cfg/yolov4.cfg yolov4.weights -ext_output test.mp4
```
see [How to use on the command line](https://github.com/AlexeyAB/darknet#how-to-use-on-the-command-line)

# Reference
https://github.com/AlexeyAB/darknet
