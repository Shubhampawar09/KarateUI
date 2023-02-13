FROM maven:3-jdk-8

LABEL maintainer="Testrig Technologies"

WORKDIR /karate-ui

COPY . ./
COPY ./pom.xml .
COPY ./src/test/java/examples/testSuite .
COPY ./src/test/java/utils .
COPY ./target/ .

RUN mvn clean install

#RUN mvn test -Dtest=uiTestRunnerwith
