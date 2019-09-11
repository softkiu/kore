FROM perl:5.30

RUN 	apt-get update && \
	apt-get install expect -y

WORKDIR /
RUN git clone https://github.com/OpenKore/openkore.git

WORKDIR /openkore
COPY compile-openkore.expect /
RUN TERM=xterm expect /compile-openkore.expect

COPY entrypoint.sh /
RUN chmod +x -v /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]