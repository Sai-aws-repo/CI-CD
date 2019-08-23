FROM java:8

RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.20/bin/apache-tomcat-8.0.20.tar.gz
RUN tar xzf apache-tomcat-8.0.20.tar.gz
CMD apache-tomcat-8.0.20/bin/startup.sh && cd /var/lib/jenkins/workspace/docker-pipe/target
COPY WebApp.war /apache-tomcat-8.0.20/webapps/
EXPOSE 8080

