# dockerfile for PROD service
FROM woahbase/alpine-tomcat:x86_64

RUN mv /tmp/folder_common/hello.war /opt/tomcat/webapps/hello.war 
