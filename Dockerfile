FROM amazoncorretto:8u242

ENV AVRO_VERSION=1.9.2

RUN mkdir -p /opt/avro-tools && \
    curl http://ftp.jaist.ac.jp/pub/apache/avro/avro-${AVRO_VERSION}/java/avro-tools-${AVRO_VERSION}.jar --output /opt/avro-tools/avro-tools.jar

ENTRYPOINT [ "java","-jar","/opt/avro-tools/avro-tools.jar" ]