FROM tensorflow/tensorflow:1.15.5-py3
RUN apt-get update && apt-get install -y 
RUN apt-get install python3.5 -y && \
    apt-get install python3-pip -y
RUN pip install --upgrade pip
COPY . /home/usr/cleverhans_3/
WORKDIR /home/usr/cleverhans_3/cleverhans_tutorials



