FROM ubuntu

LABEL maintainer="Reza Monsef <rmnsf1999@gmail.com>"

USER root

COPY ./entrypoint.bash /

RUN apt update -y
RUN apt install curl bash
RUN chmod 755 ./entrypoint.bash

USER nobody

ENTRYPOINT [ "./entrypoint.bash" ]