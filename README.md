# Docker_Terraform

This is a simple docker image that sets up nexus.

```FROM alpine:latest``` This is our linux distribution.

```RUN apk update``` This will update our package manager.

```RUN apk add wget openjdk8``` This will install wget and Java 8. Note that Nexus will only run on Java 8, so we need this version specifically.

```RUN adduser -S nexus``` This will add a user named nexus.

```USER nexus``` Sets current user to nexus.

```WORKDIR /home/nexus``` Sets the current work directory to /home/nexus.

```RUN wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz``` This will wget the .tar file that will contain the nexus download. It will copy the .tar file to the above directory.

```RUN tar -xzvf latest-unix.tar.gz``` This will untar the .tar file.

```ENTRYPOINT /home/nexus/nexus-*/bin/nexus run``` This will be the first command to be run upon execution of the container. In this case, it will run nexus.
