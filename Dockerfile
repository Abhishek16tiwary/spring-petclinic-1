FROM openjdk:17-alpine
LABEL Author="Abhishek"
WORKDIR /spc
COPY ./target/spring-petclinic*.jar  /spc/spring-petclinic.jar
EXPOSE 8080
CMD [ "java" , "-jar" , "spring-petclinic.jar" ]
