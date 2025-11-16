FROM apache/airflow:2.10.2

USER root

RUN apt-get update && \
    apt-get install -y openjdk-17-jdk procps && \
    apt-get clean

ENV JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"
ENV PATH="${JAVA_HOME}/bin:${PATH}"

USER airflow