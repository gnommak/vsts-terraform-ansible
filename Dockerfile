# Use an official Python runtime as a parent image
FROM tomcat:7.0.94-jdk8

# Copy files to configure Tomcat
COPY /build/libs/spring-music.war /usr/local/tomcat/webapps/
COPY /iac/ansible/roles/tomcat/templates/tomcat-users.xml /usr/local/tomcat/conf/
COPY /iac/ansible/roles/tomcat/templates/server.xml /usr/local/tomcat/conf/

CMD ["catalina.sh", "run"]
