FROM python:3.7-alpine
LABEL exposed.command.multiple.createfiles=createfiles \
      exposed.command.multiple.makefamilies=makefamilies \
      exposed.command.multiple.makessp=makessp

ENV PATH=$PATH:/usr/local/bin
ENV buildversion=4

COPY results.sh /
COPY requirements.txt /
RUN set -eux ; \
    apk add git build-base \
    && pip install -r /requirements.txt \
    && pip install git+https://github.com/CivicActions/compliancetools.git#egg=compliancetools

VOLUME /results
WORKDIR /src
ENTRYPOINT ["/results.sh"]
