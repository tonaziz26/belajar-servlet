FROM maven:3.9-amazoncorretto-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

FROM tomcat:11.0-jdk21-temurin
COPY --from=build /app/target/belajar-servlet.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]