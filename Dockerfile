FROM tomcat:8.0
ENV JAVA_OPTS "$JAVA_OPTS $JSSE_OPTS -Djava.security.egd=file:/dev/./urandom"
ADD **/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
