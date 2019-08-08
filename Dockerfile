FROM perl:5.30

RUN git clone https://github.com/OpenKore/openkore.git

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]