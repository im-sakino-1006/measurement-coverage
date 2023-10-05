# Container image that runs your code
FROM alpine:3.10

RUN apk add openjdk7
RUN wget -q https://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.zip \
 && unzip apache-maven-2.2.1-bin.zip
#RUN wget -q https://github.com/jacoco/jacoco/releases/download/v0.8.10/jacoco-0.8.10.zip \
# && unzip jacoco-0.8.10.zip
RUN ls -la
#RUN cd opt
RUN cd apache-maven-2.2.1-bin
#RUN sudo mv ./apache-maven-2.2.1-bin /opt/maven
RUN export PATH=$PATH:/opt/maven/bin/mvn

COPY entrypoint.sh /entrypoint.sh
# Change mode これがないとエラーになる
RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
