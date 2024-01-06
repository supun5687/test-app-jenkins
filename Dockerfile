# Use a base image with Java installed
FROM openjdk:20-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY ./target/jenkins-0.0.1-SNAPSHOT.jar /app/jenkins-0.0.1-SNAPSHOT.jar

# Expose the port your application runs on
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "jenkins-0.0.1-SNAPSHOT.jar"]
