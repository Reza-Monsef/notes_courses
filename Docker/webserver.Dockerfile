FROM ubuntu

LABEL maintainer="Reza Monsef <rmnsf1999@gmail.com>"

USER root

COPY ./Docker/web-server.bash /

RUN apt update -y
RUN apt install curl bash python3 -y
RUN chmod 755 /web-server.bash

USER nobody

ENTRYPOINT [ "/web-server.bash" ]