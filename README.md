# raspberry-simple-led
A simple python script to light some LED lights.




Running:
docker run --cap-add ALL --device /dev/mem  kmkingsbury/test:0.1





Other Example:
# DOCKER-VERSION 1.0.0
FROM resin/rpi-raspbian
 
# install required packages
RUN apt-get update
RUN apt-get install -y wget dialog
 
# install nodejs
RUN wget http://node-arm.herokuapp.com/node_latest_armhf.deb
RUN dpkg -i node_latest_armhf.deb
 
COPY . /src
RUN cd /src; npm install
 
# run application
EXPOSE 8080
CMD ["node", "/src/index.js"]
