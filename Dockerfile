# Use official Tomcat 10 image with Java 17
FROM tomcat:10.1-jdk17

# Clean default apps (like the ROOT manager etc.)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file and rename it as ROOT.war so it loads by default
COPY LifeLens-Deployed.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Railway to detect
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
