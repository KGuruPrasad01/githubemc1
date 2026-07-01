# Use a lightweight OpenJDK runtime to run the application
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the Maven build stage into the container
COPY target/*.jar app.jar

# Expose port 8080 for web traffic
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]