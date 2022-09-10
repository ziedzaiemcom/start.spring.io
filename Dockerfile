# First stage: complete build environment
FROM eclipse-temurin:18-jdk AS builder

RUN mkdir /start-spring
ADD . /start-spring

WORKDIR /start-spring

RUN ./mvnw clean install -q -DskipTests -Dmaven.test.skip=true

# Second stage: minimal runtime environment
FROM eclipse-temurin:18-jre-alpine

# copy jar from the first stage
COPY --from=builder /start-spring/start-site/target/start-site-exec.jar /start-site-exec.jar

ENV JAVA_OPTS=-Dspring.profiles.active=production

EXPOSE 8080

ENTRYPOINT ["sh","-c","java -jar -Dspring.profiles.active=production /start-site-exec.jar"]