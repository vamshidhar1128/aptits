# Use a lightweight JDK base image
FROM FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/AptItSolutions-0.0.1-SNAPSHOT.jar app.jar

# Expose the application's port (optional if you know it)
# EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
