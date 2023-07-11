FROM amazoncorretto:17
LABEL Author="Abhishek"
COPY ./target/spring-petclinic-3.1.0-SNAPSHOT.jar /spc/spring-petclinic.jar
EXPOSE 8080
CMD [ "java" , "-jar" , "spring-petclinic.jar"]
