# Use an official Python runtime as a parent image
FROM tomcat:8.0

# Copy files to configure Tomcat
COPY /home/vsts/work/1/a/build/libs/spring-music.war /usr/local/tomcat/webapps/
#COPY /home/vsts/work/1/a/iac/ansible/roles/tomcat/templates/tomcat-users.xml /usr/local/tomcat/conf/
#COPY /home/vsts/work/1/a/iac/ansible/roles/tomcat/templates/server.xml /usr/local/tomcat/conf/