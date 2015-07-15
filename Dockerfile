FROM hypriot/rpi-python
#FROM sdhibit/rpi-raspbian
RUN apt-get update && apt-get install -y git vim 
RUN apt-get install -y python python-dev 
RUN apt-get install -y python-rpi.gpio

RUN apt-get install -y gcc wget
#WORKDIR /root
#RUN wget https://pypi.python.org/packages/source/R/RPi.GPIO/RPi.GPIO-0.5.11.tar.gz
#RUN tar -xzf RPi.GPIO-0.5.11.tar.gz 
#WORKDIR /root/RPi.GPIO-0.5.11
#RUN python setup.py install
WORKDIR /root
RUN git clone https://github.com/kmkingsbury/raspberry-simple-led.git
WORKDIR /root/raspberry-simple-led
CMD ["python", "light.py"]
