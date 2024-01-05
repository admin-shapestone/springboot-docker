# Use a base image with a minimal Linux distribution and OpenJDK 17
FROM adoptopenjdk:17-jre-hotspot

# Set the working directory in the container
WORKDIR /app
ARG JAR_FILE=target/*.jar
# Copy the application JAR file into the container at /app
COPY ${JAR_FILE} /app/app.jar

# Specify the command to run on container start
CMD ["java", "-jar", "app.jar"]
