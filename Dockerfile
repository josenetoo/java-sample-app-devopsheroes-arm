# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Expose the port the app runs on
EXPOSE 8080

# Copy the JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /my-java-app/demo-0.0.1-SNAPSHOT.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/my-java-app/demo-0.0.1-SNAPSHOT.jar"]
