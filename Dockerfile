# Use an official OpenJDK 21 base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /usr/src/sapelly

# Copy the Java source file(s) to the working directory
COPY . .

# Compile the Java file
RUN javac index.java

# Run the Java application
CMD ["java", "index"]

