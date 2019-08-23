FROM tomcat:8.0-jre8
CMD cp /var/lib/jenkins/workspace/docker-pipe/target/*.war $CATALINA_HOME/webapps
EXPOSE 8080
CMD apache-tomcat-8.0.20/bin/startup.sh

