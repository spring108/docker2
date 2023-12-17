# Dockerfile for "assevmly" service:
# - prepare infrastructure
# - load the project "boxfuse-sample-java-war-hello"
# - compile the project
# - move the artefact to result folder

FROM ubuntu:20.04


#set time zone for java
RUN ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime

RUN apt update
RUN apt install git -y
RUN apt install default-jdk -y
RUN apt install maven -y

RUN cd /tmp && \
    git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

RUN mkdir /tmp/folder_common && \
    cd /tmp/boxfuse-sample-java-war-hello && \
    mvn package

#RUN mv /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/common_folder/hello.war
