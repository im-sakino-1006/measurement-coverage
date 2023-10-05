# Container image that runs your code
FROM openjdk:7-alpine

RUN apk add openjdk7
RUN wget -q https://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.zip \
 && unzip apache-maven-2.2.1-bin.zip -d /opt/
RUN wget -q https://github.com/jacoco/jacoco/releases/download/v0.8.10/jacoco-0.8.10.zip \
 && unzip jacoco-0.8.10.zip
RUN ls -la
RUN cd /opt/
# passを通したいできぬ。
#RUN mv ${ROOT}/apache-maven-2.2.1-bin /opt/maven/
#RUN ${ROOT}/apache-maven-2.2.1-bin/bin/mvn --version

COPY entrypoint.sh /entrypoint.sh
# Change mode これがないとエラーになる
RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
