FROM amazoncorretto:17
LABEL Author="Abhishek"
WORKDIR /spc
COPY ./target/spring-petclinic*.jar /spc/spring-petclinic.jar
EXPOSE 8080
CMD [ "java" , "-jar" , "spring-petclinc.jar" ]
