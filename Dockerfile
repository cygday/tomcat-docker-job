FROM tomcat:latest

# Delete default webapps (optional, for security or customization)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
COPY java-tomcat-maven-example.war /usr/local/tomcat/webapps/

# Expose Tomcat's default port (8080)
EXPOSE 8000
