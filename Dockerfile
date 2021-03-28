FROM openjdk:15

COPY . /usr/src/myapp

WORKDIR /usr/src/myapp

RUN mkdir -p /usr/src/myapp

EXPOSE 8080

ENTRYPOINT [ "sh", "-c", "java --enable-preview $JAVA_OPTS -jar app.jar" ]
