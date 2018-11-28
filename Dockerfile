FROM alpine:latest
RUN apk update
RUN apk add wget openjdk8
RUN adduser -S nexus
USER nexus
WORKDIR /home/nexus
RUN wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
RUN tar -xzvf latest-unix.tar.gz
ENTRYPOINT /home/nexus/nexus-*/bin/nexus run
