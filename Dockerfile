FROM ubuntu:14.04
RUN yum update && yum install -y git vim 
RUN yum install -y python python-dev python-rpi.gpio

RUN yum install -y gcc
RUN wget https://pypi.python.org/packages/source/R/RPi.GPIO/RPi.GPIO-0.5.11.tar.gz
RUN tar -xzfv RPi.GPIO-0.5.11.tar.gz 
WORKDIR /root/RPi.GPIO-0.5.11
RUN sudo python setup.py install
WORKDIR /root
RUN git clone https://github.com/kmkingsbury/raspberry-simple-led.git
WORKDIR /root/raspberry-simple-led
CMD ["python", "light.py"]