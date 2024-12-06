# Use an official Tomcat image as the base
FROM tomcat:9-jdk11-openjdk-slim

# Remove the default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file into the Tomcat webapps directory
COPY hello-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for the web server
EXPOSE 8000

# Start Tomcat
CMD ["catalina.sh", "run"]
