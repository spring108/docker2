# Dockerfile for "assevmly" service:
# - prepare infrastructure
# - load the project "boxfuse-sample-java-war-hello"
# - compile the project
# - move the artefact to result folder

FROM ubuntu:20.04

#RUN echo "========================" >> /tmp/folder_log/assembly.log
#RUN echo "BEGIN" >> /tmp/folder_log/assembly.log

RUN apt update

RUN apt install git -y

RUN apt install default-jdk -y
#RUN apt install openjdk-17-jdk -y

#RUN echo "JAVA installed" >> /tmp/folder_log/assembly.log

RUN apt install maven -y

#RUN echo "MAVEN installed" >> /tmp/folder_log/assembly.log

RUN cd /tmp && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git

#RUN echo "GIT CLONE success" >> /tmp/folder_log/assembly.log

RUN cd /tmp/boxfuse-sample-java-war-hello && mvn package

#RUN echo "MAKE PROJECT success" >> /tmp/folder_log/assembly.log

RUN mv /tmp/boxfuse-sample-java-war-hello/target/hello-1.0.war /tmp/common_folder/hello.war

#RUN echo "MOVE ARTEFACT success" >> /tmp/folder_log/assembly.log
#RUN echo "END" >> /tmp/folder_log/assembly.log
#RUN echo "========================" >> /tmp/folder_log/assembly.log
