FROM openjdk:8

ARG VERSION

COPY target/guestbook-0.0.1-SNAPSHOT.jar /app/guestbook.jar

<<<<<<< HEAD
LABEL maintainer="CobinCabin<wuridl@naver.com>" \
=======
LABEL maintainer="HwanYeoul Jeong<coordinatorj@jadecross.com>" \
>>>>>>> 87758bdcf5378e6d62bcab897611a409e29c4553
      title="Guestbook App" \
      version="$VERSION" \
      description="This image is guestbook service"

ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload

WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "guestbook.jar"]
