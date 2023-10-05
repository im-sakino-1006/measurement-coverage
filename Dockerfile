# Container image that runs your code
FROM alpine:3.10

RUN apk add openjdk7

#RUN wget -q https://github.com/apache/maven/archive/refs/tags/maven-2.2.1.zip \
# && unzip maven-2.2.1.zip

#RUN wget -q https://github.com/jacoco/jacoco/releases/download/v0.8.10/jacoco-0.8.10.zip \
# && unzip jacoco-0.8.10.zip

RUN ls -la

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
