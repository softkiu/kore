FROM perl:5.30

WORKDIR /
RUN git clone https://github.com/OpenKore/openkore.git

COPY entrypoint.sh /
RUN chmod +x -v /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]