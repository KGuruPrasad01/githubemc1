# Use a lightweight OpenJDK runtime to run the application
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from the Maven build stage into the container
COPY target/*.jar app.jar

# Expose port 8080 for web traffic
EXPOSE 8080

# Command to run the application
# If running a regular executable jar built by spring-boot-maven-plugin:
ENTRYPOINT ["java", "-jar", "app.jar"]

# If you are passing the main class string explicitly:
CMD ["java", "-cp", "app.jar", "com.example.MainApp"]