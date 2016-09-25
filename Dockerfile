FROM hub.c.163.com/library/java:8-jre
MAINTAINER Alexander Lukyanchikov <sqshq@sqshq.com>

ADD ./target/registry.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/registry.jar", "-Dspring.profiles.active=docker"]

EXPOSE 8761