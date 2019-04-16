# Light weight based image
FROM maven:alpine

# Setting up working directory
WORKDIR /tmp/

# copying pom.xml
COPY pom.xml /tmp/

# offline dependency installation for the optimized maven package
RUN mvn dependency:go-offline -B

# copying src and example.yaml
COPY src /tmp/src/
COPY example.yaml /tmp/

# run maven package
RUN mvn package

# run the java server
CMD ["java", "-jar", "target/hello-dropwizard-1.0-SNAPSHOT.jar", "server", "example.yaml"]

# expose 8080
EXPOSE 8080
