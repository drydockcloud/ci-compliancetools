FROM python:3.7
LABEL exposed.command.multiple.createfiles=createfiles \
      exposed.command.multiple.makefamilies=makefamilies \
      exposed.command.multiple.makessp=makessp

ENV PATH=$PATH:/usr/local/bin
ENV buildversion=6

COPY results.sh /
COPY requirements.txt /
RUN set -eux ; \
    apt-get update \
    && apt-get install git pandoc -y \
    && pip install -r /requirements.txt \
    && pip install git+https://github.com/CivicActions/compliancetools.git@v0.1.2#egg=compliancetools

VOLUME /results
WORKDIR /src
