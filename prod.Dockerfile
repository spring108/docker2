# dockerfile for PROD service
FROM woahbase/alpine-tomcat:x86_64

RUN mkdir /tmp/folder_common
RUN cp /tmp/folder_common/hello.war /opt/tomcat/webapps/hello.war 
