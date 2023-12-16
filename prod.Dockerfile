# dockerfile for PROD service
FROM woahbase/alpine-tomcat:x86_64

RUN cp /var/folder_common/hello.war /opt/tomcat/webapps/hello.war 
