FROM nvidia/cuda:12.1.0-cudnn8-runtime-ubuntu22.04

RUN apt-get update \
    &&  apt-get install -y wget bzip2 libglu1-mesa-dev qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools libgl1-mesa-glx

RUN wget https://files.ilastik.org/ilastik-1.4.0.post1-gpu-Linux.tar.bz2 \
    && tar xjf ilastik-1.*-Linux.tar.bz2 \
    && rm ilastik-1.*-Linux.tar.bz2 \
    && cd ilastik-1.4.0.post1-gpu-Linux \
    && chmod +x run_ilastik.sh

ENV PATH=$PATH:/opt/ilastik-1.4.0.post1-gpu-Linux