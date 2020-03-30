# Copyright 2019-2020 CivicActions, Inc. See the README file at the top-level
# directory of this distribution and at https://github.com/drydockcloud/ci-compliancetools#copyright.

FROM python:3.7
LABEL exposed.command.multiple.createfiles=createfiles \
      exposed.command.multiple.makefamilies=makefamilies \
      exposed.command.multiple.makessp=makessp \
      exposed.command.multiple.exportto=exportto \
      exposed.command.multiple.creatematrix=creatematrix \
      exposed.command.multiple.selectcontrols=selectcontrols

ENV PATH=$PATH:/usr/local/bin
ENV buildversion=6

COPY results.sh /
COPY requirements.txt /

WORKDIR /src

RUN set -eux ; \
    apt-get update \
    && apt-get install git pandoc -y \
    && pip install -r /requirements.txt \
    && pip install git+https://github.com/CivicActions/compliancetools.git@v0.1.15#egg=compliancetools \
    && git clone https://github.com/opencontrol/certifications.git /var/lib/certifications

VOLUME /results
