FROM openjdk:17-alpine
LABEL Author="Abhishek"
WORKDIR /spc
COPY ./target/spring-petclinic-3.1.0-SNAPSHOT.jar  /spc/spring-petclinic-3.1.0-SNAPSHOT.jar
EXPOSE 8080
CMD [ "java" , "-jar" , "spring-petclinic-3.1.0-SNAPSHOT.jar" ]
