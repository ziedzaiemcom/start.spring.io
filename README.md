# start-spring

Fork of https://github.com/spring-io/start.spring.io

This project adds Docker integration to run on own infrastructure or in isolated environments.

- Github : https://github.com/ziedzaiemcom/start.spring.io
- Docker Hub : https://hub.docker.com/r/ziedzaiemcom/start-spring

You can use [Dive](https://github.com/wagoodman/dive) to inspect Docker image contents.


## Push to Docker Hub

```
docker tag startspringio-start-spring:latest ziedzaiemcom/start-spring:0.0.1
docker login -u ziedzaiemcom
docker push ziedzaiemcom/start-spring:0.0.1
```

