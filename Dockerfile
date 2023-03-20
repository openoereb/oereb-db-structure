FROM ghcr.io/oereb/oereb-db:2

ENV PGDATA=/pg_data

RUN apt-get update && apt-get install -y \
    default-jdk \
    unzip \
    curl \
    make \
    git \
    procps

ARG ILI2PG_VERSION=4.10.1
RUN curl -o /tmp/ili2pg-${ILI2PG_VERSION}.zip https://downloads.interlis.ch/ili2pg/ili2pg-${ILI2PG_VERSION}.zip && \
    mkdir /ili2pg && \
    unzip -d /ili2pg /tmp/ili2pg-${ILI2PG_VERSION}.zip && \
    chmod -R ogu+rwx /ili2pg/* && \
    rm -rf /tmp/ili2pg-${ILI2PG_VERSION}.zip
