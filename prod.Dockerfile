# dockerfile for PROD service
FROM woahbase/alpine-tomcat:x86_64

RUN ls /tmp/folder_common/
ADD /tmp/folder_common/hello.war /opt/tomcat/webapps/hello.war
