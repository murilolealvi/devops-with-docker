# Exercise 1.7

# Indicate the source image, often in Docker Hub
FROM ubuntu:22.04

# Indicate the root directory for the commands
WORKDIR /usr/src/app

# Copy the LOCAL file to the current container's directory
COPY script.sh .

# If already with local execution permission, it remains when passing to the container.
# Otherwise, the permission can be done in build process
RUN chmod +x script.sh
RUN apt update && apt install -y curl

# Run the shell script file
CMD ./script.sh


# Exercise 1.8

#FROM devopsdockeruh/simple-web-service:alpine
#CMD ["server"]
