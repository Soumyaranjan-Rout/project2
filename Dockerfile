FROM tomcat:latest
EXPOSE 8080
COPY */*.war /usr/local/tomcat/webapps/app.war
CMD ["catalina.sh","run"]

