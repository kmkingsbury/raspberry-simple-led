FROM sdhibit/rpi-raspbian
RUN apt-get update && apt-get install -y git vim 
RUN apt-get install -y python python-dev 
#python-rpi.gpio

RUN apt-get install -y gcc
RUN wget https://pypi.python.org/packages/source/R/RPi.GPIO/RPi.GPIO-0.5.11.tar.gz
RUN tar -xzfv RPi.GPIO-0.5.11.tar.gz 
WORKDIR /root/RPi.GPIO-0.5.11
RUN sudo python setup.py install
WORKDIR /root
RUN git clone https://github.com/kmkingsbury/raspberry-simple-led.git
WORKDIR /root/raspberry-simple-led
CMD ["python", "light.py"]
