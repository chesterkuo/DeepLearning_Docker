FROM nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04
MAINTAINER Chester Kuo <chester.kuo@gmail.com>

ENV PYTHONPATH /opt/movidius/mvnc/python:${PYTHONPATH}
ARG TF_VERSION

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python-pip
RUN apt-get install -y wget
RUN apt-get install -y sudo
RUN apt-get install -y vim
RUN apt-get install -y lsb-release
RUN apt-get install -y python3-pip

RUN git clone https://github.com/movidius/ncsdk.git /ncsdk
RUN git clone https://github.com/movidius/ncappzoo.git /ncappzoo

RUN pip install --upgrade pip
RUN pip install tensorflow-gpu==1.4.1
RUN pip3 install --upgrade pip
RUN pip3 install opencv-python
RUN pip3 install opencv-contrib-python

WORKDIR /ncsdk
RUN make install
#RUN make examples

# Go to NCSDK root
WORKDIR /
RUN git clone https://github.com/tensorflow/tensorflow.git tf-${TF_VERSION}
RUN git clone https://github.com/tensorflow/models.git tf-models
RUN cd tf-${TF_VERSION} && git checkout ${TF_VERSION} && cd ..
ENV TF_SRC_PATH=/tf-${TF_VERSION}
ENV TF_MODELS_PATH=/tf-models 

# we only check with tensorflow example
WORKDIR /ncappzoo/tensorflow
RUN make

CMD ["bash"]
