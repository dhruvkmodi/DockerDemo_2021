FROM openjdk:8-jdk
RUN apt-get update
RUN apt-get install -y maven
COPY RiskMeter /usr/src/ENSE375-groupE/RiskMeter
WORKDIR /usr/src/ENSE375-groupE/RiskMeter
RUN mvn package
