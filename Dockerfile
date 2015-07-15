FROM ubuntu:14.04
RUN yum update && yum install -y git vim
RUN yum install -y python
RUN git clone https://github.com/kmkingsbury/raspberry-simple-led.git
WORKDIR raspberry-simple-led
CMD ["python", "light.py"]