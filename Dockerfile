# Use a lightweight OpenJDK runtime to run the application
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the specific JAR. 
# Note: Ensure you only have one JAR in target/ or rename it to 'app.jar' explicitly.
COPY target/githubemc1-1.0-SNAPSHOT.jar app.jar

# Expose port 8080 for web traffic
EXPOSE 8080

# Command to run the application
# We use ENTRYPOINT to define the primary executable of the image
ENTRYPOINT ["java", "-jar", "app.jar"]