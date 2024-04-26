FROM docker.io/alpine:3

LABEL org.opencontainers.image.source="https://github.com/cloud-cli/image-python"

RUN sed -i -e 's/^root::/root:!:/' /etc/shadow
RUN set -xe && apk add --no-cache bash git openssh nano python3 curl gcc g++ make libc-dev
RUN pip3 install --upgrade pip
RUN git config --global --add safe.directory /home/app
ENV HOME=/home/python
RUN mkdir -p /home/app
COPY python /home/python
RUN chown -R 1000:1000 /home
USER 1000
WORKDIR /home/app
ENTRYPOINT ["/bin/bash", "/home/python/entrypoint.sh"]