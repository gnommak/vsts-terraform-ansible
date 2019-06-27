# Use an official Python runtime as a parent image
FROM tomcat:7.0.94-jdk8

# Copy files to configure Tomcat
COPY /build/libs/spring-music.war /usr/local/tomcat/webapps/
COPY /iac/Docker/tomcat-users.xml /usr/local/tomcat/conf/
COPY /iac/Docker/server.xml /usr/local/tomcat/conf/

EXPOSE 8080

CMD ["catalina.sh", "run"]