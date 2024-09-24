FROM tomcat:latest
EXPOSE 8080
COPY /var/lib/jenkins/workspace/Project2/webapp/target/webapp.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh","run"]

