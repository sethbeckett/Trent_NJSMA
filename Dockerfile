FROM tensorflow/tensorflow:1.15.5-py3

RUN apt-get update && apt-get install -y 
RUN apt-get install python3.5 -y && \
     apt-get install python3-pip -y

RUN apt-get update &&  DEBIAN_FRONTEND="noninteractive" apt-get install --yes python-opencv 
RUN pip install opencv-python

RUN pip install --upgrade pip
RUN pip install opencv-python

COPY . /home/usr/cleverhans_3/

WORKDIR /home/usr/cleverhans_3/cleverhans_tutorials



