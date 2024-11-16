# Use an official OpenJDK 21 base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR usr/src/sapelly

# Copy the Java source file(s) to the container
# Ensure the hello.java file is in the same directory as this Dockerfile
COPY . /sapelly

# Compile the Java file
RUN javac hello.java

# Run the Java application
CMD ["java", "hello"]
